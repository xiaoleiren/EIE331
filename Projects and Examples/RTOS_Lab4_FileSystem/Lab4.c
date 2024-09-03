//*****************************************************************************
// Lab4.c - user programs, File system, stream data onto disk
//*****************************************************************************

// Jonathan W. Valvano, valvano@mail.utexas.edu
// Jan 12, 2020
// EE445M/EE380L.12 
// You may use, edit, run or distribute this file 
// You are free to change the syntax/organization of this file to do Lab 4
// as long as the basic functionality is simular
// 1) runs on your Lab 2 or Lab 3
// 2) implements your own eFile.c system with no code pasted in from other sources
// 3) streams real-time data from robot onto disk
// 4) supports multiple file reads/writes
// 5) has an interpreter that demonstrates features
// 6) interactive with UART input, and switch input

// LED outputs to logic analyzer for use by OS profile 
// PF1 is preemptive thread switch
// PF2 is first periodic task (DAS samples PE3)
// PF3 is second periodic task (PID)
// PC4 is PF4 button touch (SW1 task)

// IR distance sensors
// J5/A3/PE3 analog channel 0  <- connect an IR distance sensor to J5 to get a realistic analog signal on PE3
// J6/A2/PE2 analog channel 1  
// J7/A1/PE1 analog channel 2
// J8/A0/PE0 analog channel 3  <- connect an IR distance sensor to J8 to get a realistic analog signal on PE0

// Button inputs
// PF0 is SW2 task (Lab3)
// PF4 is SW1 button input

// Analog inputs
// PE0 Ain3 sequencer 3, channel 3, J8/PE0, 100 Hz, sampling in DAS(), software start
// PE3 Ain0 sequencer 0, channel 0, J5/PE3, 50 Hz, timer-triggered sampling, processed by Producer

//******Sensor Board I/O*******************
// **********ST7735 TFT and SDC*******************
// ST7735
// Backlight (pin 10) connected to +3.3 V
// MISO (pin 9) unconnected
// SCK (pin 8) connected to PA2 (SSI0Clk)
// MOSI (pin 7) connected to PA5 (SSI0Tx)
// TFT_CS (pin 6) connected to PA3 (SSI0Fss)
// CARD_CS (pin 5) connected to PB0
// Data/Command (pin 4) connected to PA6 (GPIO), high for data, low for command
// RESET (pin 3) connected to PA7 (GPIO)
// VCC (pin 2) connected to +3.3 V
// Gnd (pin 1) connected to ground

// HC-SR04 Ultrasonic Range Finder 
// J9X  Trigger0 to PB7 output (10us pulse)
// J9X  Echo0    to PB6 T0CCP0
// J10X Trigger1 to PB5 output (10us pulse)
// J10X Echo1    to PB4 T1CCP0
// J11X Trigger2 to PB3 output (10us pulse)
// J11X Echo2    to PB2 T3CCP0
// J12X Trigger3 to PC5 output (10us pulse)
// J12X Echo3    to PF4 T2CCP0

// Ping))) Ultrasonic Range Finder 
// J9Y  Trigger/Echo0 to PB6 T0CCP0
// J10Y Trigger/Echo1 to PB4 T1CCP0
// J11Y Trigger/Echo2 to PB2 T3CCP0
// J12Y Trigger/Echo3 to PF4 T2CCP0

// IR distance sensors
// J5/A0/PE3
// J6/A1/PE2
// J7/A2/PE1
// J8/A3/PE0  

// ESP8266
// PB1 Reset
// PD6 Uart Rx <- Tx ESP8266
// PD7 Uart Tx -> Rx ESP8266

// Free pins (debugging)
// PF3, PF2, PF1 (color LED)
// PD3, PD2, PD1, PD0, PC4

#include <stdint.h>
#include <string.h> 
#include <stdio.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/LPF.h"
#include "../inc/IRDistance.h"
#include "../RTOS_Labs_common/OS.h"
#include "../RTOS_Labs_common/Interpreter.h"
#include "../RTOS_Labs_common/ST7735.h"
#include "../inc/ADCT0ATrigger.h"
#include "../RTOS_Labs_common/UART0int.h"
#include "../RTOS_Labs_common/eDisk.h"
#include "../RTOS_Labs_common/eFile.h"
#include "../RTOS_Labs_common/ADC.h"

//*********Prototype for FFT in cr4_fft_64_stm32.s, STMicroelectronics
void cr4_fft_64_stm32(void *pssOUT, void *pssIN, unsigned short Nbin);

  
#define PD0  (*((volatile uint32_t *)0x40007004))
#define PD1  (*((volatile uint32_t *)0x40007008))
#define PD2  (*((volatile uint32_t *)0x40007010))
#define PD3  (*((volatile uint32_t *)0x40007020))

uint32_t NumCreated;   // number of foreground threads created
uint32_t IdleCount;    // CPU idle counter
uint32_t NumSamples;   // incremented every sample
uint32_t DataLost;     // data sent by Producer, but not received by Consumer
uint32_t PIDWork;      // current number of PID calculations finished
uint32_t FilterWork;   // number of digital filter calculations finished

#define TIMESLICE 2*TIME_1MS  // thread switch time in system time units

int32_t x[64],y[64];        // input and output arrays for FFT
Sema4Type doFFT;            // set every 64 samples by DAS
uint32_t Running;           // true while robot is running

void PortD_Init(void){ 
  SYSCTL_RCGCGPIO_R |= 0x08;       // activate port D
  while((SYSCTL_PRGPIO_R&0x08)==0){};      
  GPIO_PORTD_DIR_R |= 0x0F;    // make PD3-0 output heartbeats
  GPIO_PORTD_AFSEL_R &= ~0x0F;   // disable alt funct on PD3-0
  GPIO_PORTD_DEN_R |= 0x0F;     // enable digital I/O on PD3-0
  GPIO_PORTD_PCTL_R = ~0x0000FFFF;
  GPIO_PORTD_AMSEL_R &= ~0x0F;;    // disable analog functionality on PD
}  

//******** DAS *************** 
// background thread, median filter
// inputs:  none
// outputs: none
uint32_t Index3;    // counts to 64 samples
int32_t ADCdata,FilterOutput,Distance;
void DAS(void){  
  PD0 ^= 0x01;
  ADCdata = ADC_In();  // channel set when calling ADC_Init
  PD0 ^= 0x01;
  if(Index3<64){
    FilterOutput = Median(ADCdata); // 3-wide median filter
    Distance = IRDistance_Convert(FilterOutput,0);
    FilterWork++;        // calculation finished
    x[Index3] = Distance;
    Index3++;
    if(Index3==64){
      OS_Signal(&doFFT);
    }
  }
  PD0 ^= 0x01;
}

//******** DSP *************** 
// foreground thread, process data from DAS
// calculats FFT, output distance in mm on J8/A3/PE0
// inputs:  none
// outputs: none
void DSP(void){ 
  uint32_t DCcomponent;   // 12-bit raw ADC sample, 0 to 4095
  while(1) { 
    OS_Wait(&doFFT); // wait for 64 samples
    PD2 = 0x04;
    cr4_fft_64_stm32(y,x,64);  // complex FFT of last 64 ADC values
    PD2 = 0x00;
    Index3 = 0; // take another buffer
    DCcomponent = y[0]&0xFFFF; // Real part at frequency 0, imaginary part should be zero
    ST7735_Message(1,0,"IR3 (mm) =",DCcomponent);    
  }
}

//******** Robot *************** 
// foreground thread, accepts data from producer
// inputs:  none
// outputs: none
char FileName[8]="robot0";
void Robot(void){   
  uint32_t data;      // ADC sample, 0 to 1023
  uint32_t voltage;   // in mV,      0 to 3300
  uint32_t distance;  // in mm,      100 to 800
  uint32_t time;      // in 10msec,  0 to 1000 
  
  DataLost = 0;       // new run with no lost data 
  OS_ClearMsTime();    
  OS_Fifo_Init(256);

  printf("Robot running...");
  if (OS_RedirectToFile(FileName)){ // robot0, robot1,...,robot7
    printf(" Error redirecting to file.\n\r");
    Running = 0;
    OS_Kill();
    return;
  }
  printf("time(s)\tdata(V)\tdistance(mm)\n\r");
  do{
    PIDWork++;    // performance measurement
    time = OS_MsTime();          // 10ms resolution in this OS
    data = OS_Fifo_Get();        // 1000 Hz sampling get from producer
    voltage = (300*data)/1024;   // in mV
    distance = IRDistance_Convert(data,1);
    printf("%0u.%02u\t%0u.%03u \t%5u\n\r",time/100,time%100,voltage/1000,voltage%1000,distance);
  }
  while(time < 200);       // change this to mean 2 seconds
  OS_EndRedirectToFile();
  ST7735_Message(0,1,"IR0 (mm) =",distance); 
  printf("done.\n\r");
  FileName[5] = (FileName[5]+1)&0xF7; // 0 to 7
  Running = 0;             // robot no longer running
  OS_Kill();
}
  
//************SW1Push*************
// Called when SW1 Button pushed
// background threads execute once and return
void SW1Push(void){
  if(Running==0){
    Running = 1;  // prevents you from starting two robot threads
    NumCreated += OS_AddThread(&Robot,128,1);  // start a 2 second run
  }
}

//************SW2Push*************
// Called when SW2 Button pushed
// background threads execute once and return
void SW2Push(void){
}

//******** Producer *************** 
// The Producer in this lab will be called from an ADC ISR
// A timer runs at 50 Hz, started by realmain()
// The timer triggers the ADC, creating the 50 Hz sampling
// The ADC ISR runs when ADC data is ready
// The ADC ISR calls this function with a 10-bit sample 
// sends data to the Robot
// inputs:  none
// outputs: none
void Producer(uint32_t data){  
  if(Running){
    if(OS_Fifo_Put(data)){     // send to Robot
      NumSamples++;
    } else{ 
      DataLost++;
    } 
  }
}
 
//******** Init Task  *************** 
// foreground thread, runs at startup
// performs user-level initializations
// inputs:  none
// outputs: none
void Init(void){
  // initialize file system
  // needs to execute after periodic interrupts have started
  if(eFile_Init()) {   
    printf("Error initializing file system.\n\r");
  }
 
  // mount the file system
  if(eFile_Mount()) {
    printf("Error mounting file system.\n\r");
  }
  
  // launch user-level tasks
  NumCreated += OS_AddThread(&DSP,128,1); 
  
  OS_Kill();
}

//******** Idle Task  *************** 
// foreground thread, runs when no other work needed
// never blocks, never sleeps, never dies
// inputs:  none
// outputs: none
void Idle(void){ 
  while(1) { 
    IdleCount++;        // CPU utilizations    
  }
}

//*******************Lab 4 main **********
int realmain(void){        // lab 4 real main
  OS_Init();           // initialize, disable interrupts
  PortD_Init();        // user debugging profile
  Running = 0;         // robot not running
  DataLost = 0;        // lost data between producer and consumer
  NumSamples = 0;
  IdleCount = 0;
  
  // initialize communication channels
  OS_Fifo_Init(64);    
  OS_InitSemaphore(&doFFT,0); 
  ADC0_InitTimer0ATriggerSeq0(0, 50, &Producer); // start ADC sampling, channel 0, PE3, 50 Hz
  ADC_Init(3);  // sequencer 3, channel 3, PE0, sampling in DAS()
  OS_AddPeriodicThread(&DAS,10*TIME_1MS,1); // 100Hz real time sampling of PE0

  // attach background tasks
  OS_AddPeriodicThread(&disk_timerproc,TIME_1MS,5);   // time-out routines for disk
  OS_AddSW1Task(&SW1Push,2);    // PF4, SW1
  OS_AddSW2Task(&SW2Push,3);    // PF0, SW2

  // create initial foreground threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Init,128,0);  // init process, run first
  NumCreated += OS_AddThread(&Interpreter,128,4); 
  NumCreated += OS_AddThread(&Idle,128,5);  // runs when nothing useful to do

  OS_Launch(TIMESLICE); // doesn't return, interrupts enabled in here
  return 0;             // this never executes
}

//+++++++++++++++++++++++++DEBUGGING CODE++++++++++++++++++++++++
// ONCE YOUR RTOS WORKS YOU CAN COMMENT OUT THE REMAINING CODE
// 

//*****************Test project 0*************************
// This is the simplest configuration, 
// Just see if you can import your OS
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
  }
}
void Thread2(void){
  Count2 = 0;          
  for(;;){
    PD1 ^= 0x02;       // heartbeat
    Count2++;
  }
}
void Thread3(void){
  Count3 = 0;          
  for(;;){
    PD2 ^= 0x04;       // heartbeat
    Count3++;
  }
}

int Testmain0(void){  // Testmain0
  OS_Init();          // initialize, disable interrupts
  PortD_Init();       // profile user threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Thread1,128,1); 
  NumCreated += OS_AddThread(&Thread2,128,2); 
  NumCreated += OS_AddThread(&Thread3,128,3); 
  // Count1 Count2 Count3 should be equal or off by one at all times
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//*****************Test project 1*************************
// Write and read test of random access disk blocks
// Warning: this overwrites whatever is on the disk
void diskError(char* errtype, uint32_t n){
  printf(errtype);
  printf(" disk error %u",n);
  OS_Kill();
}
unsigned char buffer[512];  // don't put on stack
#define MAXBLOCKS 100
void TestDisk(void){  DSTATUS result;  uint32_t block;  int i; uint32_t n;
  // simple test of eDisk
  ST7735_DrawString(0, 1, "eDisk test      ", ST7735_WHITE);
  printf("\n\rEE445M/EE380L, Lab 4 eDisk test\n\r");
  result = eDisk_Init(0);  // initialize disk
  if(result) diskError("eDisk_Init",result);
  printf("Writing blocks\n\r");
  n = 1;    // seed
  for(block = 0; block < MAXBLOCKS; block++){
    for(i=0;i<512;i++){
      n = (16807*n)%2147483647; // pseudo random sequence
      buffer[i] = 0xFF&n;        
    }
    PD3 = 0x08;     // PD3 high for 100 block writes
    if(eDisk_WriteBlock(buffer,block))diskError("eDisk_WriteBlock",block); // save to disk
    PD3 = 0x00;     
  }  
  printf("Reading blocks\n\r");
  n = 1;  // reseed, start over to get the same sequence
  for(block = 0; block < MAXBLOCKS; block++){
    PD2 = 0x04;     // PF2 high for one block read
    if(eDisk_ReadBlock(buffer,block))diskError("eDisk_ReadBlock",block); // read from disk
    PD2 = 0x00;
    for(i=0;i<512;i++){
      n = (16807*n)%2147483647; // pseudo random sequence
      if(buffer[i] != (0xFF&n)){
        printf("Read data not correct, block=%u, i=%u, expected %u, read %u\n\r",block,i,(0xFF&n),buffer[i]);
        OS_Kill();
      }      
    }
  }  
  printf("Successful test of %u blocks\n\r",MAXBLOCKS);
  ST7735_DrawString(0, 1, "eDisk successful", ST7735_YELLOW);
  Running=0; // launch again
  OS_Kill();
}

void SW1Push1(void){
  if(Running==0){
    Running = 1;  // prevents you from starting two test threads
    NumCreated += OS_AddThread(&TestDisk,128,1);  // test eDisk
  }
}

int Testmain1(void){   // Testmain1
  OS_Init();           // initialize, disable interrupts
  PortD_Init();
  Running = 1; 

  // attach background tasks
  OS_AddPeriodicThread(&disk_timerproc,TIME_1MS,0);   // time out routines for disk
  OS_AddSW1Task(&SW1Push1,2);
    
  // create initial foreground threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&TestDisk,128,1);  
  NumCreated += OS_AddThread(&Idle,128,3); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*****************Test project 2*************************
// Filesystem test. 
// Warning: this reformats the disk, all existing data will be lost
char const string1[]="Filename = %s";
char const string2[]="File size = %lu bytes";
char const string3[]="Number of Files = %u";
char const string4[]="Number of Bytes = %lu";
void TestDirectory(void){ char *name; unsigned long size; 
  unsigned int num;
  unsigned long total;
  num = 0;
  total = 0;
  printf("\n\r");
  if(eFile_DOpen(""))           diskError("eFile_DOpen",0);
  while(!eFile_DirNext(&name, &size)){
    printf(string1, name);
    printf("  ");
    printf(string2, size);
    printf("\n\r");
    total = total+size;
    num++;    
  }
  printf(string3, num);
  printf("\n\r");
  printf(string4, total);
  printf("\n\r");
  if(eFile_DClose())            diskError("eFile_DClose",0);
}
void TestFile(void){   int i; char data; 
  printf("\n\rEE445M/EE380L, Lab 4 eFile test\n\r");
  ST7735_DrawString(0, 1, "eFile test      ", ST7735_WHITE);
  // simple test of eFile
  if(eFile_Init())              diskError("eFile_Init",0); 
  if(eFile_Format())            diskError("eFile_Format",0); 
  if(eFile_Mount())             diskError("eFile_Mount",0);
  TestDirectory();
  if(eFile_Create("file1"))     diskError("eFile_Create",0);
  if(eFile_WOpen("file1"))      diskError("eFile_WOpen",0);
  for(i=0;i<1000;i++){
    if(eFile_Write('a'+i%26))   diskError("eFile_Write",i);
    if(i%52==51){
      if(eFile_Write('\n'))     diskError("eFile_Write",i);  
      if(eFile_Write('\r'))     diskError("eFile_Write",i);
    }
  }
  if(eFile_WClose())            diskError("eFile_WClose",0);
  TestDirectory();
  if(eFile_ROpen("file1"))      diskError("eFile_ROpen",0);
  for(i=0;i<1000;i++){
    if(eFile_ReadNext(&data))   diskError("eFile_ReadNext",i);
    UART_OutChar(data);
  }
  if(eFile_Delete("file1"))     diskError("eFile_Delete",0);
  TestDirectory();
  if(eFile_Unmount())           diskError("eFile_Unmount",0);
  printf("Successful test\n\r");
  ST7735_DrawString(0, 1, "eFile successful", ST7735_YELLOW);
  Running=0; // launch again
  OS_Kill();
}

void SW2Push2(void){
  if(Running==0){
    Running = 1;  // prevents you from starting two test threads
    NumCreated += OS_AddThread(&TestFile,128,1);  // test eFile
  }
}

int Testmain2(void){   // Testmain2 
  OS_Init();           // initialize, disable interrupts
  PortD_Init();
  Running = 1; 

  // attach background tasks
  OS_AddPeriodicThread(&disk_timerproc,TIME_1MS,0);   // time out routines for disk
  OS_AddSW1Task(&SW1Push1,2);    // PF4, SW1
  OS_AddSW2Task(&SW2Push2,2);    // PF0, SW2
  
  // create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&TestFile,128,1);  
  NumCreated += OS_AddThread(&Idle,128,3); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*******************Trampoline for selecting main to execute**********
int main(void) { 			// main
  realmain();
}
