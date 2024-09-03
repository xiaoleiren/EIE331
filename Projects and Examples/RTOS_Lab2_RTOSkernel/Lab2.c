// Lab2.c
// Runs on LM4F120/TM4C123
// Real Time Operating System for Lab 2
// Lab2 Part 1: Testmain1 and Testmain2
// Lab2 Part 2: Testmain3, Testmain4, Testmain5, TestmainCS and realmain

// Jonathan W. Valvano 1/29/20, valvano@mail.utexas.edu
// EE445M/EE380L.12
// You may use, edit, run or distribute this file 
// You are free to change the syntax/organization of this file

// LED outputs to logic analyzer for use by OS profile
// PF1 is preemptive thread switch
// PF2 is periodic task (DAS samples PE3)
// PC4 is PF4 button touch (SW1 task)

// IR distance sensors
// J5/A3/PE3 analog channel 0  <- connect an IR distance sensor to J5 to get a realistic analog signal on PE3
// J6/A2/PE2 analog channel 1  <- connect an IR distance sensor to J6 to get a realistic analog signal on PE2
// J7/A1/PE1 analog channel 2
// J8/A0/PE0 analog channel 3  

// Button inputs
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
uint32_t PIDWork;      // current number of PID calculations finished
uint32_t FilterWork;   // number of digital filter calculations finished
uint32_t NumSamples;   // incremented every ADC sample, in Producer
#define FS 400              // producer/consumer sampling
#define RUNLENGTH (20*FS)   // display results and quit when NumSamples==RUNLENGTH
// 20-sec finite time experiment duration 

#define PERIOD TIME_500US   // DAS 2kHz sampling period in system time units
int32_t x[64],y[64];           // input and output arrays for FFT

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
  unsigned static long LastTime;  // time at previous ADC sample
  uint32_t thisTime;              // time at current ADC sample
  long jitter;                    // time between measured and expected, in us
  if(NumSamples < RUNLENGTH){   // finite time run
    PD0 ^= 0x01;
    input = ADC_In();           // channel set when calling ADC_Init
    PD0 ^= 0x01;
    thisTime = OS_Time();       // current time, 12.5 ns
    DASoutput = Filter(input);
    FilterWork++;        // calculation finished
    if(FilterWork>1){    // ignore timing of first interrupt
      uint32_t diff = OS_TimeDifference(LastTime,thisTime);
      if(diff>PERIOD){
        jitter = (diff-PERIOD+4)/8;  // in 0.1 usec
      }else{
        jitter = (PERIOD-diff+4)/8;  // in 0.1 usec
      }
      if(jitter > MaxJitter){
        MaxJitter = jitter; // in usec
      }       // jitter should be 0
      if(jitter >= JitterSize){
        jitter = JitterSize-1;
      }
      JitterHistogram[jitter]++; 
    }
    LastTime = thisTime;
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
  ST7735_Message(1,0,"NumCreated =",NumCreated); 
  PD1 ^= 0x02;
  OS_Sleep(50);     // set this to sleep for 50msec
  ST7735_Message(1,1,"PIDWork     =",PIDWork);
  ST7735_Message(1,2,"DataLost    =",DataLost);
  ST7735_Message(1,3,"Jitter 0.1us=",MaxJitter);
  PD1 ^= 0x02;
  OS_Kill();  // done, OS does not return from a Kill
} 

//************SW1Push*************
// Called when SW1 Button pushed
// Adds another foreground task
// background threads execute once and return
void SW1Push(void){
  if(OS_MsTime() > 20){ // debounce
    if(OS_AddThread(&ButtonWork,100,0)){
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
  ST7735_Message(0,1,"Run length = ",(RUNLENGTH)/FS);   // top half used for Display
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
// foreground thread that runs without waiting or sleeping
// it executes a digital controller 

//******** PID *************** 
// foreground thread, runs a PID controller
// never blocks, never sleeps, never dies
// inputs:  none
// outputs: none
short IntTerm;     // accumulated error, RPM-sec
short PrevError;   // previous error, RPM
short Coeff[3];    // PID coefficients
short Actuator;
void PID(void){ 
  short err;  // speed error, range -100 to 100 RPM
  PIDWork = 0;
  IntTerm = 0;
  PrevError = 0;
  Coeff[0] = 384;   // 1.5 = 384/256 proportional coefficient
  Coeff[1] = 128;   // 0.5 = 128/256 integral coefficient
  Coeff[2] = 64;    // 0.25 = 64/256 derivative coefficient*
  while(NumSamples < RUNLENGTH) { 
    for(err = -1000; err <= 1000; err++){    // made-up data
      Actuator = PID_stm32(err,Coeff)/256;
    }
    PIDWork++;        // calculation finished
  }
  for(;;){ }          // done
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


//*******************final user main DEMONTRATE THIS TO TA**********
int realmain(void){     // realmain
  OS_Init();        // initialize, disable interrupts
  PortD_Init();     // debugging profile
  MaxJitter = 0;    // in 1us units
  DataLost = 0;     // lost data between producer and consumer
  NumSamples = 0;
  FilterWork = 0;

  // initialize communication channels
  OS_MailBox_Init();
  OS_Fifo_Init(64);    // ***note*** 4 is not big enough*****

  // hardware init
  ADC_Init(0);  // sequencer 3, channel 0, PE3, sampling in DAS() 
	
  // attach background tasks
  OS_AddSW1Task(&SW1Push,2);
  OS_AddPeriodicThread(&DAS,PERIOD,1); // 2 kHz real time sampling of PE3

	// create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&Consumer,128,0); 
  NumCreated += OS_AddThread(&Interpreter,128,0); 
  NumCreated += OS_AddThread(&PID,128,0);
 
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
// Once the third test runs, test this (Lab 2 part 2)
// no UART1 interrupts
// SYSTICK interrupts, with or without period established by OS_Launch
// Timer interrupts, with or without period established by OS_AddPeriodicThread
// PortF GPIO interrupts, active low
// no ADC serial port or LCD output
// tests the spinlock semaphores, tests Sleep and Kill
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
  NumCreated += OS_AddThread(&Thread5d,128,0); 
  OS_AddPeriodicThread(&BackgroundThread1d,TIME_1MS,0); 
  for(;;){
    OS_Wait(&Readyd);
    Count2++;   // Count2 + Count5 should equal Count1
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
  NumCreated += OS_AddThread(&Thread4d,128,0); 
}
      
int Testmain4(void){   // Testmain4
  Count4 = 0;          
  OS_Init();           // initialize, disable interrupts
  // Count2 + Count5 should equal Count1
  // Count4 increases by 64 every time select is pressed
  NumCreated = 0 ;
  OS_AddSW1Task(&BackgroundThread5d,2);
  NumCreated += OS_AddThread(&Thread2d,128,0); 
  NumCreated += OS_AddThread(&Thread3d,128,0); 
  NumCreated += OS_AddThread(&Thread4d,128,0); 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Fith TEST**********
// Once the fourth test runs, run this example (Lab 2 part 2)
// no UART interrupts
// SYSTICK interrupts, with or without period established by OS_Launch
// Timer interrupts, with or without period established by OS_AddPeriodicThread
// Select switch interrupts, active low
// no ADC serial port or LCD output
// tests the spinlock semaphores, tests Sleep and Kill
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
  NumCreated += OS_AddThread(&Thread4e,128,0); 
}

int Testmain5(void){   // Testmain5
  Count4 = 0;          
  OS_Init();           // initialize, disable interrupts
  // Count1 should exactly equal Count2
  // Count3 should be very large
  // Count4 increases by 640 every time select is pressed
  NumCreated = 0 ;
  OS_AddPeriodicThread(&BackgroundThread1e,PERIOD,0); 
  OS_AddSW1Task(&BackgroundThread5e,2);
  NumCreated += OS_AddThread(&Thread2e,128,0); 
  NumCreated += OS_AddThread(&Thread3e,128,0); 
  NumCreated += OS_AddThread(&Thread4e,128,0); 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
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
  OS_AddPeriodicThread(&BackgroundThreadFIFOProducer,PERIOD,0); 
  OS_Fifo_Init(16);
  NumCreated += OS_AddThread(&ConsumerThreadFIFO,128,0); 
  NumCreated += OS_AddThread(&FillerThreadFIFO,128,0); 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*******************Trampoline for selecting main to execute**********
int main(void) { 			// main 
  realmain();
}
