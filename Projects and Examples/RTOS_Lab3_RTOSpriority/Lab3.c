// Lab3.c
// Runs on LM4F120/TM4C123
// Real Time Operating System for Labs 2 and 3
// Lab2 Part 1: Testmain1 and Testmain2
// Lab2 Part 2: Testmain3, Testmain4, Testmain5, TestmainCS and realmain
// Lab3: Testmain6, Testmain7, TestmainCS and realmain (with SW2)

// Jonathan W. Valvano 1/29/20, valvano@mail.utexas.edu
// EE445M/EE380L.12
// You may use, edit, run or distribute this file 
// You are free to change the syntax/organization of this file

// LED outputs to logic analyzer for use by OS profile 
// PF1 is preemptive thread switch
// PF2 is first periodic task (DAS samples PE3)
// PF3 is second periodic task (PID)
// PC4 is PF4 button touch (SW1 task)

// IR distance sensors
// J5/A3/PE3 analog channel 0  <- connect an IR distance sensor to J5 to get a realistic analog signal on PE3
// J6/A2/PE2 analog channel 1  <- connect an IR distance sensor to J6 to get a realistic analog signal on PE2
// J7/A1/PE1 analog channel 2
// J8/A0/PE0 analog channel 3  

// Button inputs
// PF0 is SW2 task (Lab3)
// PF4 is SW1 button input

// Analog inputs
// PE3 Ain0 sampled at 2kHz, sequencer 3, by DAS, using software start in ISR
// PE2 Ain1 sampled at 250Hz, sequencer 0, by Producer, timer tigger

#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/PLL.h"
#include "../inc/LPF.h"
#include "../RTOS_Labs_common/UART0int.h"
#include "../RTOS_Labs_common/ADC.h"
#include "../inc/ADCT0ATrigger.h"
#include "../inc/IRDistance.h"
#include "../RTOS_Labs_common/OS.h"
#include "../RTOS_Labs_common/Interpreter.h"
#include "../RTOS_Labs_common/ST7735.h"


//*********Prototype for FFT in cr4_fft_64_stm32.s, STMicroelectronics
void cr4_fft_64_stm32(void *pssOUT, void *pssIN, unsigned short Nbin);
//*********Prototype for PID in PID_stm32.s, STMicroelectronics
short PID_stm32(short Error, short *Coeff);

uint32_t NumCreated;   // number of foreground threads created
uint32_t IdleCount;    // CPU idle counter
uint32_t PIDWork;      // current number of PID calculations finished
uint32_t FilterWork;   // number of digital filter calculations finished
uint32_t NumSamples;   // incremented every ADC sample, in Producer
#define FS 400              // producer/consumer sampling
#define RUNLENGTH (20*FS)   // display results and quit when NumSamples==RUNLENGTH
// 20-sec finite time experiment duration 

#define PERIOD1 TIME_500US   // DAS 2kHz sampling period in system time units
#define PERIOD2 TIME_1MS     // PID period in system time units
int32_t x[64],y[64];           // input and output arrays for FFT

// Idle reference count for 10ms of completely idle CPU
// This should really be calibrated in a 10ms delay loop in OS_Init()
uint32_t IdleCountRef = 30769;
uint32_t CPUUtil;       // calculated CPU utilization (in 0.01%)

//---------------------User debugging-----------------------
uint32_t DataLost;     // data sent by Producer, but not received by Consumer
extern int32_t MaxJitter;             // largest time jitter between interrupts in usec
extern uint32_t const JitterSize;
extern uint32_t JitterHistogram[];

#define PD0  (*((volatile uint32_t *)0x40007004))
#define PD1  (*((volatile uint32_t *)0x40007008))
#define PD2  (*((volatile uint32_t *)0x40007010))
#define PD3  (*((volatile uint32_t *)0x40007020))

void PortD_Init(void){ 
  SYSCTL_RCGCGPIO_R |= 0x08;       // activate port D
  while((SYSCTL_RCGCGPIO_R&0x08)==0){};      
  GPIO_PORTD_DIR_R |= 0x0F;        // make PD3-0 output heartbeats
  GPIO_PORTD_AFSEL_R &= ~0x0F;     // disable alt funct on PD3-0
  GPIO_PORTD_DEN_R |= 0x0F;        // enable digital I/O on PD3-0
  GPIO_PORTD_PCTL_R = ~0x0000FFFF;
  GPIO_PORTD_AMSEL_R &= ~0x0F;;    // disable analog functionality on PD
}

//------------------Task 1--------------------------------
// 2 kHz sampling ADC channel 0, using software start trigger
// background thread executed at 2 kHz
// 60-Hz notch high-Q, IIR filter, assuming fs=2000 Hz
// y(n) = (256x(n) -503x(n-1) + 256x(n-2) + 498y(n-1)-251y(n-2))/256 (2k sampling)

//******** DAS *************** 
// background thread, calculates 60Hz notch filter
// runs 2000 times/sec
// samples analog channel 0, PE3,
// inputs:  none
// outputs: none
uint32_t DASoutput;
void DAS(void){ 
  uint32_t input;  
  if(NumSamples < RUNLENGTH){   // finite time run
    PD0 ^= 0x01;
    input = ADC_In();           // channel set when calling ADC_Init
    PD0 ^= 0x01;
    DASoutput = Filter(input);
    FilterWork++;        // calculation finished
    PD0 ^= 0x01;
  }
}

//--------------end of Task 1-----------------------------

//------------------Task 2--------------------------------
// background thread executes with SW1 button
// one foreground task created with button push
// foreground treads run for 2 sec and die

// ***********ButtonWork*************
void ButtonWork(void){
  uint32_t myId = OS_Id(); 
  PD1 ^= 0x02;
  ST7735_Message(1,0,"NumCreated   =",NumCreated); 
  PD1 ^= 0x02;
  OS_Sleep(50);     // set this to sleep for 50msec
  ST7735_Message(1,1,"CPUUtil 0.01%=",CPUUtil);
  ST7735_Message(1,2,"DataLost     =",DataLost);
  ST7735_Message(1,3,"Jitter 0.1us =",MaxJitter);
  ST7735_Message(1,4,"CPUUtil 0.01%=",CPUUtil);
  PD1 ^= 0x02;
  OS_Kill();  // done, OS does not return from a Kill
} 

//************SW1Push*************
// Called when SW1 Button pushed
// Adds another foreground task
// background threads execute once and return
void SW1Push(void){
  if(OS_MsTime() > 20){ // debounce
    if(OS_AddThread(&ButtonWork,100,2)){
      NumCreated++; 
    }
    OS_ClearMsTime();  // at least 20ms between touches
  }
}

//************SW2Push*************
// Called when SW2 Button pushed, Lab 3 only
// Adds another foreground task
// background threads execute once and return
void SW2Push(void){
  if(OS_MsTime() > 20){ // debounce
    if(OS_AddThread(&ButtonWork,100,2)){
      NumCreated++; 
    }
    OS_ClearMsTime();  // at least 20ms between touches
  }
}

//--------------end of Task 2-----------------------------

//------------------Task 3--------------------------------
// hardware timer-triggered ADC sampling at 400Hz
// Producer runs as part of ADC ISR
// Producer uses fifo to transmit 400 samples/sec to Consumer
// every 64 samples, Consumer calculates FFT
// every 2.5ms*64 = 160 ms (6.25 Hz), consumer sends data to Display via mailbox
// Display thread updates LCD with measurement

//******** Producer *************** 
// The Producer in this lab will be called from an ADC ISR
// A timer runs at 400Hz, started through the provided ADCT0ATrigger.c driver
// The timer triggers the ADC, creating the 400Hz sampling
// The ADC ISR runs when ADC data is ready
// The ADC ISR calls this function with a 12-bit sample 
// sends data to the consumer, runs periodically at 400Hz
// inputs:  none
// outputs: none
void Producer(uint32_t data){  
  if(NumSamples < RUNLENGTH){   // finite time run
    NumSamples++;               // number of samples
    if(OS_Fifo_Put(data) == 0){ // send to consumer
      DataLost++;
    } 
  } 
}

//******** Consumer *************** 
// foreground thread, accepts data from producer
// calculates FFT, sends DC component to Display
// inputs:  none
// outputs: none
void Display(void); 
void Consumer(void){ 
  uint32_t data,DCcomponent;   // 12-bit raw ADC sample, 0 to 4095
  uint32_t t;                  // time in 2.5 ms
  ADC0_InitTimer0ATriggerSeq0(1, FS, &Producer); // start ADC sampling, channel 1, PE2, 400 Hz
  NumCreated += OS_AddThread(&Display,128,0); 
  while(NumSamples < RUNLENGTH) { 
    PD2 = 0x04;
    for(t = 0; t < 64; t++){   // collect 64 ADC samples
      data = OS_Fifo_Get();    // get from producer
      x[t] = data;             // real part is 0 to 4095, imaginary part is 0
    }
    PD2 = 0x00;
    cr4_fft_64_stm32(y,x,64);  // complex FFT of last 64 ADC values
    DCcomponent = y[0]&0xFFFF; // Real part at frequency 0, imaginary part should be zero
    OS_MailBox_Send(DCcomponent); // called every 2.5ms*64 = 160ms
  }
  OS_Kill();  // done
}

//******** Display *************** 
// foreground thread, accepts data from consumer
// displays calculated results on the LCD
// inputs:  none                            
// outputs: none
void Display(void){ 
  uint32_t data,voltage,distance;
  uint32_t myId = OS_Id();
  ST7735_Message(0,1,"Run length = ",(RUNLENGTH)/FS); // top half used for Display
  while(NumSamples < RUNLENGTH) { 
    data = OS_MailBox_Recv();
    voltage = 3000*data/4095;   // calibrate your device so voltage is in mV
    distance = IRDistance_Convert(data,1); // you will calibrate this in Lab 6
    PD3 = 0x08;
    ST7735_Message(0,2,"v(mV) =",voltage);  
    ST7735_Message(0,3,"d(mm) =",distance);  
    PD3 = 0x00;
  } 
  ST7735_Message(0,4,"Num samples =",NumSamples);  
  OS_Kill();  // done
} 

//--------------end of Task 3-----------------------------

//------------------Task 4--------------------------------
// background thread that executes a digital controller 

//******** PID *************** 
// background thread, runs a PID controller
// runs every 1ms
// inputs:  none
// outputs: none
short IntTerm;     // accumulated error, RPM-sec
short PrevError;   // previous error, RPM
short Coeff[3] = { // PID coefficients
  384,  // 1.5 = 384/256 proportional coefficient
  128,  // 0.5 = 128/256 integral coefficient
  64    // 0.25 = 64/256 derivative coefficient*
};    
short Actuator;
void PID(void){ 
  static short err = -1000;  // speed error, range -100 to 100 RPM
  Actuator = PID_stm32(err,Coeff)/256;
  err++; 
  if(err > 1000) err = -1000; // made-up data
  PIDWork++;
}

//--------------end of Task 4-----------------------------

//------------------Task 5--------------------------------
// UART background ISR performs serial input/output
// Two software fifos are used to pass I/O data to foreground
// The interpreter runs as a foreground thread
// The UART driver should call OS_Wait(&RxDataAvailable) when foreground tries to receive
// The UART ISR should call OS_Signal(&RxDataAvailable) when it receives data from Rx
// Similarly, the transmit channel waits on a semaphore in the foreground
// and the UART ISR signals this semaphore (TxRoomLeft) when getting data from fifo

//******** Interpreter *************** 
// Modify your intepreter from Lab 1, adding commands to help debug 
// Interpreter is a foreground thread, accepts input from serial port, outputs to serial port
// inputs:  none
// outputs: none
void Interpreter(void);    // just a prototype, link to your interpreter
// add the following commands, leave other commands, if they make sense
// 1) print performance measures 
//    time-jitter, number of data points lost, number of calculations performed
//    i.e., NumSamples, NumCreated, MaxJitter, DataLost, FilterWork, PIDwork
      
// 2) print debugging parameters 
//    i.e., x[], y[] 

//--------------end of Task 5-----------------------------

//------------------Task 6--------------------------------
// foreground idle thread that always runs without waiting or sleeping

//******** Idle Task *************** 
// foreground thread, runs when nothing else does
// never blocks, never sleeps, never dies
// measures CPU idle time, i.e. CPU utilization
// inputs:  none
// outputs: none
void Idle(void){
  // measure idle time only for the first 20s for this lab	
  while(NumSamples < RUNLENGTH){
    IdleCount++;  // measure of CPU idle time
  }
  
  // compute CPU utilization (in 0.01%)
  CPUUtil = 10000 - (5*IdleCount)/IdleCountRef;
  
  while(1) {
    // if you do not wish to measure CPU utilization using this idle task
    // you can execute WaitForInterrupt to put processor to sleep
    WaitForInterrupt();
  }
}

//--------------end of Task 6-----------------------------

//*******************final user main DEMONTRATE THIS TO TA**********
int realmain(void){ // realmain
  OS_Init();        // initialize, disable interrupts
  PortD_Init();     // debugging profile
  MaxJitter = 0;    // in 1us units
  DataLost = 0;     // lost data between producer and consumer
  IdleCount = 0;
  CPUUtil = 0;
  NumSamples = 0;
  FilterWork = 0;
  PIDWork = 0;
	
  // initialize communication channels
  OS_MailBox_Init();
  OS_Fifo_Init(64);    // ***note*** 4 is not big enough*****

  // hardware init
  ADC_Init(0);  // sequencer 3, channel 0, PE3, sampling in DAS() 

  // attach background tasks
  OS_AddSW1Task(&SW1Push,2);
  OS_AddSW2Task(&SW2Push,2);  // added in Lab 3
  OS_AddPeriodicThread(&DAS,PERIOD1,1); // 2 kHz real time sampling of PE3
  OS_AddPeriodicThread(&PID,PERIOD2,2); // Lab 3 PID, lowest priority

  // create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&Consumer,128,1); 
  NumCreated += OS_AddThread(&Interpreter,128,2); 
  NumCreated += OS_AddThread(&Idle,128,5);  // Lab 3, at lowest priority 
 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//+++++++++++++++++++++++++DEBUGGING CODE++++++++++++++++++++++++
// ONCE YOUR RTOS WORKS YOU CAN COMMENT OUT THE REMAINING CODE
// 
//*******************Initial TEST**********
// This is the simplest configuration, test this first, (Lab 2 part 1)
// run this with 
// no UART interrupts
// no SYSTICK interrupts
// no timer interrupts
// no switch interrupts
// no ADC serial port or LCD output
// no calls to semaphores
uint32_t Count1;   // number of times thread1 loops
uint32_t Count2;   // number of times thread2 loops
uint32_t Count3;   // number of times thread3 loops
uint32_t Count4;   // number of times thread4 loops
uint32_t Count5;   // number of times thread5 loops
void Thread1(void){
  Count1 = 0;          
  for(;;){
    PD0 ^= 0x01;       // heartbeat
    Count1++;
    OS_Suspend();      // cooperative multitasking
  }
}
void Thread2(void){
  Count2 = 0;          
  for(;;){
    PD1 ^= 0x02;       // heartbeat
    Count2++;
    OS_Suspend();      // cooperative multitasking
  }
}
void Thread3(void){
  Count3 = 0;          
  for(;;){
    PD2 ^= 0x04;       // heartbeat
    Count3++;
    OS_Suspend();      // cooperative multitasking
  }
}

int Testmain1(void){  // Testmain1
  OS_Init();          // initialize, disable interrupts
  PortD_Init();       // profile user threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Thread1,128,0); 
  NumCreated += OS_AddThread(&Thread2,128,0); 
  NumCreated += OS_AddThread(&Thread3,128,0); 
  // Count1 Count2 Count3 should be equal or off by one at all times
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Second TEST**********
// Once the initalize test runs, test this (Lab 2 part 1)
// no UART interrupts
// SYSTICK interrupts, with or without period established by OS_Launch
// no timer interrupts
// no switch interrupts
// no ADC serial port or LCD output
// no calls to semaphores
void Thread1b(void){
  Count1 = 0;          
  for(;;){
    PD0 ^= 0x01;       // heartbeat
    Count1++;
  }
}
void Thread2b(void){
  Count2 = 0;          
  for(;;){
    PD1 ^= 0x02;       // heartbeat
    Count2++;
  }
}
void Thread3b(void){
  Count3 = 0;          
  for(;;){
    PD2 ^= 0x04;       // heartbeat
    Count3++;
  }
}

int Testmain2(void){  // Testmain2
  OS_Init();          // initialize, disable interrupts
  PortD_Init();       // profile user threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Thread1b,128,0); 
  NumCreated += OS_AddThread(&Thread2b,128,0); 
  NumCreated += OS_AddThread(&Thread3b,128,0); 
  // Count1 Count2 Count3 should be equal on average
  // counts are larger than Testmain1
 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Third TEST**********
// Once the second test runs, test this (Lab 2 part 2)
// no UART interrupts
// SYSTICK interrupts, with or without period established by OS_Launch
// no timer interrupts
// no switch interrupts
// no ADC serial port or LCD output
// no calls to semaphores
// tests AddThread, Sleep and Kill
void Thread1c(void){ int i;
  Count1 = 0;          
  for(i=0;i<=42;i++){
    PD0 ^= 0x01;       // heartbeat
    Count1++;
  }
  OS_Kill();
  Count1 = 0;
}
void Thread2c(void){
  Count2 = 0;          
  for(;;){
    PD1 ^= 0x02;       // heartbeat
    Count2++;
    NumCreated += OS_AddThread(&Thread1c,128,0); 
    OS_Sleep(5);
  }
}
void Thread3c(void){
  Count3 = 0;          
  for(;;){
    PD2 ^= 0x04;       // heartbeat
    Count3++;
  }
}

int Testmain3(void){  // Testmain3
  OS_Init();          // initialize, disable interrupts
  PortD_Init();       // profile user threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Thread2c,128,0); 
  NumCreated += OS_AddThread(&Thread3c,128,0); 
  // Count3 should be larger than Count2, Count1 should be 42
 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Fourth TEST**********
// Once the third test runs, test this (Lab 2 part 2 and Lab 3)
// no UART1 interrupts
// SYSTICK interrupts, with or without period established by OS_Launch
// Timer interrupts, with or without period established by OS_AddPeriodicThread
// PortF GPIO interrupts, active low
// no ADC serial port or LCD output
// tests priorities and blocking semaphores, tests Sleep and Kill
Sema4Type Readyd;        // set in background
int Lost;
void BackgroundThread1d(void){   // called at 1000 Hz
  Count1++;
  OS_Signal(&Readyd);
}
void Thread5d(void){
  for(;;){
    OS_Wait(&Readyd);
    Count5++;   // Count2 + Count5 should equal Count1 
    Lost = Count1-Count5-Count2;
  }
}
void Thread2d(void){
  OS_InitSemaphore(&Readyd,0);
  Count1 = 0;    // number of times signal is called      
  Count2 = 0;    
  Count5 = 0;    // Count2 + Count5 should equal Count1  
  NumCreated += OS_AddThread(&Thread5d,128,1); 
  OS_AddPeriodicThread(&BackgroundThread1d,TIME_1MS,0); 
  for(;;){
    OS_Wait(&Readyd);
    Count2++;   // Count2 + Count5 should equal Count1
    Lost = Count1-Count5-Count2;
  }
}
void Thread3d(void){
  Count3 = 0;          
  for(;;){
    Count3++;
  }
}
void Thread4d(void){ int i;
  for(i=0;i<64;i++){
    Count4++;
    OS_Sleep(10);
  }
  OS_Kill();
  Count4 = 0;
}
void BackgroundThread5d(void){   // called when Select button pushed
  NumCreated += OS_AddThread(&Thread4d,128,1); 
}
      
int Testmain4(void){   // Testmain4
  Count4 = 0;          
  OS_Init();           // initialize, disable interrupts
  // Count2 + Count5 should equal Count1
  // With priorities, Count5 should be zero 
  // Count4 increases by 64 every time select is pressed
  NumCreated = 0 ;
  OS_AddSW1Task(&BackgroundThread5d,2);
  NumCreated += OS_AddThread(&Thread2d,128,0); // Lab 3 highest priority 
  NumCreated += OS_AddThread(&Thread3d,128,1); 
  NumCreated += OS_AddThread(&Thread4d,128,1); 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Fith TEST**********
// Once the fourth test runs, run this example (Lab 2 part 2 and Lab 3)
// no UART interrupts
// SYSTICK interrupts, with or without period established by OS_Launch
// Timer interrupts, with or without period established by OS_AddPeriodicThread
// Select switch interrupts, active low
// no ADC serial port or LCD output
// tests the blocking semaphores, tests Sleep and Kill
// uses priorities to test proper blocking of sempahore waits
Sema4Type Readye;        // set in background
void BackgroundThread1e(void){   // called at 1000 Hz
static int i=0;
  i++;
  if(i==50){
    i = 0;         //every 50 ms
    Count1++;
    OS_bSignal(&Readye);
  }
}
void Thread2e(void){
  OS_InitSemaphore(&Readye,0);
  Count1 = 0;          
  Count2 = 0;          
  for(;;){
    OS_bWait(&Readye);
    Count2++;     // Count2 should be equal to Count1
  }
}
void Thread3e(void){
  Count3 = 0;          
  for(;;){
    Count3++;     // Count3 should be large
  }
}
void Thread4e(void){ int i;
  for(i=0;i<640;i++){
    Count4++;     // Count4 should increase on button press
    OS_Sleep(1);
  }
  OS_Kill();
}
void BackgroundThread5e(void){   // called when Select button pushed
  NumCreated += OS_AddThread(&Thread4e,128,1); 
}

int Testmain5(void){   // Testmain5
  Count4 = 0;          
  OS_Init();           // initialize, disable interrupts
  // Count1 should exactly equal Count2
  // Count3 should be very large
  // Count4 increases by 640 every time select is pressed
  NumCreated = 0 ;
  OS_AddPeriodicThread(&BackgroundThread1e,PERIOD1,0); 
  OS_AddSW1Task(&BackgroundThread5e,2);
  NumCreated += OS_AddThread(&Thread2e,128,0); // Lab 3 set to highest priority
  NumCreated += OS_AddThread(&Thread3e,128,1); 
  NumCreated += OS_AddThread(&Thread4e,128,1); 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//******************* Lab 3 Procedure 2**********
// Modify this so it runs with your RTOS (i.e., fix the time units to match your OS)
// run this with 
// UART0, 115200 baud rate, used to output results 
// SYSTICK interrupts, period established by OS_Launch
// first timer interrupts, period established by first call to OS_AddPeriodicThread
// second timer interrupts, period established by second call to OS_AddPeriodicThread
// SW1 no interrupts
// SW2 no interrupts
uint32_t CountA;   // number of times Task A called
uint32_t CountB;   // number of times Task B called
uint32_t Count1;   // number of times thread1 loops

// simple time delay, simulates user program doing real work
// Input: amount of work in 100ns units (free free to change units)
void PseudoWork(uint32_t work){
uint32_t startTime;
  startTime = OS_Time();    // time in 100ns units
  while(OS_TimeDifference(startTime,OS_Time()) <= work){} 
}
void Thread6(void){  // foreground thread
  Count1 = 0;          
  for(;;){
    Count1++; 
    PD0 ^= 0x01;        // debugging toggle bit 0  
  }
}
extern void Jitter(int32_t, uint32_t const, uint32_t []); // prints jitter information (write this)
void Thread7(void){  // foreground thread
  UART_OutString("\n\rEE345M/EE380L, Lab 3 Procedure 2\n\r");
  OS_Sleep(5000);   // 10 seconds        
  Jitter(MaxJitter, JitterSize, JitterHistogram);  // print jitter information
  //Jitter(MaxJitter2, JitterSize2, JitterHistogram2);  // print jitter of second thread
  UART_OutString("\n\r\n\r");
  OS_Kill();
}
#define workA 500       // {5,50,500 us} work in Task A
#define counts1us 10    // number of OS_Time counts per 1us
void TaskA(void){       // called every {1000, 2990us} in background
  PD1 = 0x02;      // debugging profile  
  CountA++;
  PseudoWork(workA*counts1us); //  do work (100ns time resolution)
  PD1 = 0x00;      // debugging profile  
}
#define workB 250       // 250 us work in Task B
void TaskB(void){       // called every pB in background
  PD2 = 0x04;      // debugging profile  
  CountB++;
  PseudoWork(workB*counts1us); //  do work (100ns time resolution)
  PD2 = 0x00;      // debugging profile  
}

int Testmain6(void){       // Testmain6 Lab 3
  PortD_Init();
  OS_Init();           // initialize, disable interrupts
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Thread7,128,1); 
  NumCreated += OS_AddThread(&Thread6,128,2); 
  OS_AddPeriodicThread(&TaskA,TIME_1MS,0);           // 1 ms, higher priority
  OS_AddPeriodicThread(&TaskB,2*TIME_1MS,1);         // 2 ms, lower priority
 
  OS_Launch(TIME_2MS); // 2ms, doesn't return, interrupts enabled in here
  return 0;             // this never executes
}

//******************* Lab 3 Procedure 4**********
// Modify this so it runs with your RTOS used to test blocking semaphores
// run this with 
// UART0, 115200 baud rate,  used to output results 
// SYSTICK interrupts, period established by OS_Launch
// first timer interrupts, period established by first call to OS_AddPeriodicThread
// second timer interrupts, period established by second call to OS_AddPeriodicThread
// SW1 no interrupts, 
// SW2 no interrupts
Sema4Type s;            // test of this counting semaphore
uint32_t SignalCount1;   // number of times s is signaled
uint32_t SignalCount2;   // number of times s is signaled
uint32_t SignalCount3;   // number of times s is signaled
uint32_t WaitCount1;     // number of times s is successfully waited on
uint32_t WaitCount2;     // number of times s is successfully waited on
uint32_t WaitCount3;     // number of times s is successfully waited on
#define MAXCOUNT 20000
void OutputThread(void){  // foreground thread
  UART_OutString("\n\rEE445M/EE380L, Lab 3 Procedure 4\n\r");
  while(SignalCount1+SignalCount2+SignalCount3<100*MAXCOUNT){
    OS_Sleep(1000);   // 1 second
    UART_OutString(".");
  }       
  UART_OutString(" done\n\r");
  UART_OutString("Signalled="); UART_OutUDec(SignalCount1+SignalCount2+SignalCount3);
  UART_OutString(", Waited="); UART_OutUDec(WaitCount1+WaitCount2+WaitCount3);
  UART_OutString("\n\r");
  OS_Kill();
}
void Wait1(void){  // foreground thread
  for(;;){
    OS_Wait(&s);    // three threads waiting
    WaitCount1++; 
  }
}
void Wait2(void){  // foreground thread
  for(;;){
    OS_Wait(&s);    // three threads waiting
    WaitCount2++; 
  }
}
void Wait3(void){   // foreground thread
  for(;;){
    OS_Wait(&s);    // three threads waiting
    WaitCount3++; 
  }
}
void Signal1(void){      // called every 799us in background
  if(SignalCount1<MAXCOUNT){
    OS_Signal(&s);
    SignalCount1++;
  }
}
// edit this so it changes the periodic rate
void Signal2(void){       // called every 1111us in background
  if(SignalCount2<MAXCOUNT){
    OS_Signal(&s);
    SignalCount2++;
  }
}
void Signal3(void){       // foreground
  while(SignalCount3<98*MAXCOUNT){
    OS_Signal(&s);
    SignalCount3++;
  }
  OS_Kill();
}

int32_t add(const int32_t n, const int32_t m){
static int32_t result;
  result = m+n;
  return result;
}
int Testmain7(void){      // Testmain7  Lab 3
  volatile uint32_t delay;
  OS_Init();           // initialize, disable interrupts
  delay = add(3,4);
  PortD_Init();
  SignalCount1 = 0;   // number of times s is signaled
  SignalCount2 = 0;   // number of times s is signaled
  SignalCount3 = 0;   // number of times s is signaled
  WaitCount1 = 0;     // number of times s is successfully waited on
  WaitCount2 = 0;     // number of times s is successfully waited on
  WaitCount3 = 0;    // number of times s is successfully waited on
  OS_InitSemaphore(&s,0);   // this is the test semaphore
  OS_AddPeriodicThread(&Signal1,(799*TIME_1MS)/1000,0);   // 0.799 ms, higher priority
  OS_AddPeriodicThread(&Signal2,(1111*TIME_1MS)/1000,1);  // 1.111 ms, lower priority
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&OutputThread,128,2);   // results output thread
  NumCreated += OS_AddThread(&Signal3,128,2);   // signalling thread
  NumCreated += OS_AddThread(&Wait1,128,2);   // waiting thread
  NumCreated += OS_AddThread(&Wait2,128,2);   // waiting thread
  NumCreated += OS_AddThread(&Wait3,128,2);   // waiting thread
  NumCreated += OS_AddThread(&Thread6,128,5);      // idle thread to keep from crashing
 
  OS_Launch(TIME_1MS);  // 1ms, doesn't return, interrupts enabled in here
  return 0;             // this never executes
}

//*******************Measurement of context switch time**********
// Run this to measure the time it takes to perform a task switch
// UART0 not needed 
// SYSTICK interrupts, period established by OS_Launch
// first timer not needed
// second timer not needed
// SW1 not needed, 
// SW2 not needed
// logic analyzer on PF1 for systick interrupt (in your OS)
//                on PD0 to measure context switch time
void ThreadCS(void){       // only thread running
  while(1){
    PD0 ^= 0x01;      // debugging profile  
  }
}
int TestmainCS(void){       // TestmainCS
  PortD_Init();
  OS_Init();           // initialize, disable interrupts
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&ThreadCS,128,0); 
  OS_Launch(TIME_1MS/10); // 100us, doesn't return, interrupts enabled in here
  return 0;             // this never executes
}

//*******************FIFO TEST**********
// FIFO test
// Count1 should exactly equal Count2
// Count3 should be very large
// Timer interrupts, with period established by OS_AddPeriodicThread
uint32_t OtherCount1;
uint32_t Expected8; // last data read+1
uint32_t Error8;
void ConsumerThreadFIFO(void){        
  Count2 = 0;          
  for(;;){
    OtherCount1 = OS_Fifo_Get();
    if(OtherCount1 != Expected8){
      Error8++;
    }
    Expected8 = OtherCount1+1; // should be sequential
    Count2++;     
  }
}
void FillerThreadFIFO(void){
  Count3 = 0;          
  for(;;){
    Count3++;
  }
}
void BackgroundThreadFIFOProducer(void){   // called periodically
  if(OS_Fifo_Put(Count1) == 0){ // send to consumer
    DataLost++;
  }
  Count1++;
}

int TestmainFIFO(void){   // TestmainFIFO
  Count1 = 0;     DataLost = 0;  
  Expected8 = 0;  Error8 = 0;
  OS_Init();           // initialize, disable interrupts
  NumCreated = 0 ;
  OS_AddPeriodicThread(&BackgroundThreadFIFOProducer,PERIOD1,0); 
  OS_Fifo_Init(16);
  NumCreated += OS_AddThread(&ConsumerThreadFIFO,128,2); 
  NumCreated += OS_AddThread(&FillerThreadFIFO,128,3); 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Trampoline for selecting main to execute**********
int main(void) { 			// main 
  realmain();
}
