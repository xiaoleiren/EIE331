// Lab5.c
// Runs on LM4F120/TM4C123
// Real Time Operating System for Lab 5

// Jonathan W. Valvano 3/29/17, valvano@mail.utexas.edu
// Andreas Gerstlauer 3/1/16, gerstl@ece.utexas.edu
// EE445M/EE380L.6 
// You may use, edit, run or distribute this file 
// You are free to change the syntax/organization of this file

// LED outputs to logic analyzer for use by OS profile 
// PF1 is preemptive thread switch
// PF2 is first periodic background task (if any)
// PF3 is second periodic background task (if any)
// PC4 is PF4 button touch (SW1 task)

// Outputs for task profiling
// PD0 is idle task
// PD1 is button task

// Button inputs
// PF0 is SW2 task
// PF4 is SW1 button input

// Analog inputs
// PE3 Ain0 sampled at 2kHz, sequencer 3, by Interpreter, using software start

#include <stdint.h>
#include <stdio.h> 
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/PLL.h"
#include "../inc/LPF.h"
#include "../RTOS_Labs_common/UART0int.h"
#include "../RTOS_Labs_common/ADC.h"
#include "../RTOS_Labs_common/OS.h"
#include "../RTOS_Labs_common/heap.h"
#include "../RTOS_Labs_common/Interpreter.h"
#include "../RTOS_Labs_common/ST7735.h"
#include "../RTOS_Labs_common/eDisk.h"
#include "../RTOS_Labs_common/eFile.h"


uint32_t NumCreated;   // number of foreground threads created
uint32_t IdleCount;    // CPU idle counter

//---------------------User debugging-----------------------
extern int32_t MaxJitter;             // largest time jitter between interrupts in usec

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
// background thread executes with SW1 button
// one foreground task created with button push

// ***********ButtonWork*************
void ButtonWork(void){  heap_stats_t heap;
  uint32_t myId = OS_Id(); 
  PD1 ^= 0x02;
  if(Heap_Stats(&heap)) OS_Kill();
  PD1 ^= 0x02;
  ST7735_Message(1,0,"Heap size  =",heap.size); 
  ST7735_Message(1,1,"Heap used  =",heap.used);  
  ST7735_Message(1,2,"Heap free  =",heap.free);
  ST7735_Message(1,3,"Heap waste =",heap.size - heap.used - heap.free);
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
// Called when SW2 Button pushed
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

//--------------end of Task 1-----------------------------

//------------------Idle Task--------------------------------
// foreground thread, runs when nothing else does
// never blocks, never sleeps, never dies
// inputs:  none
// outputs: none
void Idle(void){
  IdleCount = 0;          
  while(1) {
    IdleCount++;
    PD0 ^= 0x01;
    WaitForInterrupt();
  }
}

//--------------end of Idle Task-----------------------------

//*******************final user main DEMONTRATE THIS TO TA**********
int realmain(void){ // realmain
  OS_Init();        // initialize, disable interrupts
  PortD_Init();     // debugging profile
  MaxJitter = 0;    // in 1us units
	
  // hardware init
  ADC_Init(0);  // sequencer 3, channel 0, PE3, sampling in Interpreter

  Heap_Init();  // initialize heap
  
  // attach background tasks
  OS_AddPeriodicThread(&disk_timerproc,TIME_1MS,0);   // time out routines for disk  
  OS_AddSW1Task(&SW1Push,2);
  OS_AddSW2Task(&SW2Push,2);  

  // create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&Interpreter,128,2); 
  NumCreated += OS_AddThread(&Idle,128,5);  // at lowest priority 
 
  OS_Launch(TIME_2MS); // doesn't return, interrupts enabled in here
  return 0;            // this never executes
}

//+++++++++++++++++++++++++DEBUGGING CODE++++++++++++++++++++++++
// ONCE YOUR RTOS WORKS YOU CAN COMMENT OUT THE REMAINING CODE
// 

//*****************File System Test*************************
// Tests integration of FAT filesystem for Lab 5. This should succeed. 
// Warning: this reformats the disk, all existing data will be lost
void diskError(const char* errtype, uint32_t n){
  printf(errtype);
  printf(" disk error %u",n);
  OS_Kill();
}
char const string1[]="Filename = %s";
char const string2[]="File size = %lu bytes";
char const string3[]="Number of Files = %u";
char const string4[]="Number of Bytes = %lu";
uint32_t FileTestRunning = 0; 
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
  printf("\n\rEE445M/EE380L, Lab 5 eFile test\n\r");
  ST7735_DrawString(0, 1, "eFile test      ", ST7735_WHITE);
  // simple test of eFile
  if(eFile_Init())              diskError("eFile_Init",0); 
  if(eFile_Mount())             diskError("eFile_Mount",0);
  if(eFile_Format())            diskError("eFile_Format",0); 
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
  FileTestRunning=0; // launch again
  OS_Kill();
}

void SWPushFile(void){
  if(FileTestRunning==0){
    FileTestRunning = 1;  // prevents you from starting two test threads
    NumCreated += OS_AddThread(&TestFile,128,1);  // test eFile
  }
}

int TestmainFile(void){   // TestmainFile
  OS_Init();           // initialize, disable interrupts
  PortD_Init();
  FileTestRunning = 1; 

  // attach background tasks
  OS_AddPeriodicThread(&disk_timerproc,TIME_1MS,0);   // time out routines for disk
  OS_AddSW1Task(&SWPushFile,2);    // PF4, SW1
  OS_AddSW2Task(&SWPushFile,2);    // PF0, SW2
  
  // create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&TestFile,128,1);  
  NumCreated += OS_AddThread(&Idle,128,3); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

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
// Heap test, allocate and deallocate memory
void heapError(const char* errtype,const char* v,uint32_t n){
  printf(errtype);
  printf(" heap error %s%u",v,n);
  OS_Kill();
}
heap_stats_t stats;
void heapStats(void){
  if(Heap_Stats(&stats))  heapError("Heap_Stats","",0);
  ST7735_Message(1,0,"Heap size  =",stats.size); 
  ST7735_Message(1,1,"Heap used  =",stats.used);  
  ST7735_Message(1,2,"Heap free  =",stats.free);
  ST7735_Message(1,3,"Heap waste =",stats.size - stats.used - stats.free);
}
int16_t* ptr;  // Global so easier to see with the debugger
int16_t* p1;   // Proper style would be to make these variables local
int16_t* p2;
int16_t* p3;
uint8_t* q1;
uint8_t* q2;
uint8_t* q3;
uint8_t* q4;
uint8_t* q5;
uint8_t* q6;
int16_t maxBlockSize;
uint8_t* bigBlock;
void TestHeap(void){  int16_t i;  
  ST7735_DrawString(0, 0, "Heap test            ", ST7735_WHITE);
  printf("\n\rEE445M/EE380L, Lab 5 Heap Test\n\r");
  if(Heap_Init())         heapError("Heap_Init","",0);

  ptr = Heap_Malloc(sizeof(int16_t));
  if(!ptr)                heapError("Heap_Malloc","ptr",0);
  *ptr = 0x1111;

  if(Heap_Free(ptr))      heapError("Heap_Free","ptr",0);

  ptr = Heap_Malloc(1);
  if(!ptr)                heapError("Heap_Malloc","ptr",1);

  if(Heap_Free(ptr))      heapError("Heap_Free","ptr",1);

  p1 = (int16_t*) Heap_Malloc(1 * sizeof(int16_t));
  if(!p1)                 heapError("Heap_Malloc","p",1);
  p2 = (int16_t*) Heap_Malloc(2 * sizeof(int16_t));
  if(!p2)                 heapError("Heap_Malloc","p",2);
  p3 = (int16_t*) Heap_Malloc(3 * sizeof(int16_t));
  if(!p3)                 heapError("Heap_Malloc","p",3);
  p1[0] = 0xAAAA;
  p2[0] = 0xBBBB;
  p2[1] = 0xBBBB;
  p3[0] = 0xCCCC;
  p3[1] = 0xCCCC;
  p3[2] = 0xCCCC;
  heapStats();

  if(Heap_Free(p1))       heapError("Heap_Free","p",1);
  if(Heap_Free(p3))       heapError("Heap_Free","p",3);

  if(Heap_Free(p2))       heapError("Heap_Free","p",2);
  heapStats();

  for(i = 0; i <= (stats.size / sizeof(int32_t)); i++){
    ptr = Heap_Malloc(sizeof(int16_t));
    if(!ptr) break;
  }
  if(ptr)                 heapError("Heap_Malloc","i",i);
  heapStats();
  
  printf("Realloc test\n\r");
  if(Heap_Init())         heapError("Heap_Init","",1);
  q1 = Heap_Malloc(1);
  if(!q1)                 heapError("Heap_Malloc","q",1);
  q2 = Heap_Malloc(2);
  if(!q2)                 heapError("Heap_Malloc","q",2);
  q3 = Heap_Malloc(3);
  if(!q3)                 heapError("Heap_Malloc","q",3);
  q4 = Heap_Malloc(4);
  if(!q4)                 heapError("Heap_Malloc","q",4);
  q5 = Heap_Malloc(5);
  if(!q5)                 heapError("Heap_Malloc","q",5);

  *q1 = 0xDD;
  q6 = Heap_Realloc(q1, 6);
  heapStats();

  for(i = 0; i < 6; i++){
    q6[i] = 0xEE;
  }
  q1 = Heap_Realloc(q6, 2);
  heapStats();

  printf("Large block test\n\r");
  if(Heap_Init())         heapError("Heap_Init","",2);
  heapStats();
  maxBlockSize = stats.free;
  bigBlock = Heap_Malloc(maxBlockSize);
  for(i = 0; i < maxBlockSize; i++){
    bigBlock[i] = 0xFF;
  }
  heapStats();
  if(Heap_Free(bigBlock)) heapError("Heap_Free","bigBlock",0);

  bigBlock = Heap_Calloc(maxBlockSize);
  if(!bigBlock)           heapError("Heap_Calloc","bigBlock",0);
  if(*bigBlock)           heapError("Zero initialization","bigBlock",0);
  heapStats();

  if(Heap_Free(bigBlock)) heapError("Heap_Free","bigBlock",0);
  heapStats();
  
  printf("Successful heap test\n\r");
  ST7735_DrawString(0, 0, "Heap test successful", ST7735_YELLOW);
  OS_Kill();
}

void SW1Push1(void){
  if(OS_MsTime() > 20){ // debounce
    if(OS_AddThread(&TestHeap,128,1)){
      NumCreated++;
    }
    OS_ClearMsTime();  // at least 20ms between touches
  }
}

int Testmain1(void){   // Testmain1
  OS_Init();           // initialize, disable interrupts
  PortD_Init();

  // attach background tasks
  OS_AddSW1Task(&SW1Push1,2);
    
  // create initial foreground threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&TestHeap,128,1);  
  NumCreated += OS_AddThread(&Idle,128,3); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*****************Test project 2*************************
// Process management test, add and reclaim dummy process
void TestUser(void){ uint32_t id; uint32_t time;
  id = OS_Id();
  PD2 ^= 0x04;
  ST7735_Message(0,1, "Hello world: ", id);
  time = OS_Time();
  OS_Sleep(1000);
  time = (((OS_TimeDifference(time, OS_Time()))/1000ul)*125ul)/10000ul;
  ST7735_Message(0,2, "Sleep time: ", time);
  PD2 ^= 0x04;
  OS_Kill();
}

//  OS-internal OS_AddProcess function
extern int OS_AddProcess(void(*entry)(void), void *text, void *data, 
  unsigned long stackSize, unsigned long priority); 

void TestProcess(void){ heap_stats_t heap1, heap2;
  // simple process management test, add process with dummy code and data segments
  ST7735_DrawString(0, 0, "Process test         ", ST7735_WHITE);
  printf("\n\rEE445M/EE380L, Lab 5 Process Test\n\r");
  PD1 ^= 0x02;
  if(Heap_Stats(&heap1)) OS_Kill();
  PD1 ^= 0x02;
  ST7735_Message(1,0,"Heap size  =",heap1.size); 
  ST7735_Message(1,1,"Heap used  =",heap1.used);  
  ST7735_Message(1,2,"Heap free  =",heap1.free);
  ST7735_Message(1,3,"Heap waste =",heap1.size - heap1.used - heap1.free);
  PD1 ^= 0x02;
  if(!OS_AddProcess(&TestUser,Heap_Calloc(128),Heap_Calloc(128),128,1)){
    printf("OS_AddProcess error");
    OS_Kill();
  }
  PD1 ^= 0x02;
  OS_Sleep(2000); // wait long enough for user thread and hence process to exit/die
  PD1 ^= 0x02;
  if(Heap_Stats(&heap2)) OS_Kill();
  PD1 ^= 0x02;
  ST7735_Message(1,0,"Heap size  =",heap2.size); 
  ST7735_Message(1,1,"Heap used  =",heap2.used);  
  ST7735_Message(1,2,"Heap free  =",heap2.free);
  ST7735_Message(1,3,"Heap waste =",heap2.size - heap2.used - heap2.free);
  PD1 ^= 0x02;
  if((heap1.free != heap2.free)||(heap1.used != heap2.used)){
    printf("Process management heap error");
    OS_Kill();
  }
  printf("Successful process test\n\r");
  ST7735_DrawString(0, 0, "Process test successful", ST7735_YELLOW);
  OS_Kill();  
}

void SW2Push2(void){
  if(OS_MsTime() > 20){ // debounce
    if(OS_AddThread(&TestProcess,128,1)){
      NumCreated++;
    }
    OS_ClearMsTime();  // at least 20ms between touches
  }
}

int Testmain2(void){   // Testmain2 
  OS_Init();           // initialize, disable interrupts
  PortD_Init();

  // attach background tasks
  OS_AddSW1Task(&SW1Push1,2);  // PF4, SW1
  OS_AddSW2Task(&SW2Push2,2);  // PF0, SW2
  
  // create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&TestProcess,128,1);  
  NumCreated += OS_AddThread(&Idle,128,3); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*****************Test project 3*************************
// Test supervisor calls (SVC exceptions)
// Using inline assembly, syntax is dependent on the compiler
// The following code compiles in Keil 5.x (even though the UI complains)
__asm uint32_t SVC_OS_Id(void){
    SVC #0
    BX  LR
  }
__asm void SVC_OS_Kill(void){
    SVC #1
    BX  LR
  }
__asm void SVC_OS_Sleep(uint32_t t){
    SVC #2
    BX  LR
  }
__asm uint32_t SVC_OS_Time(void){
    SVC #3
    BX  LR
  }
__asm int SVC_OS_AddThread(void(*t)(void), uint32_t s, uint32_t p){
    SVC #4
    BX  LR
  }
uint32_t line = 0;
void TestSVCThread(void){ uint32_t id;	
  id = SVC_OS_Id();
  PD3 ^= 0x08;
  ST7735_Message(0,line++, "Thread: ", id);
  SVC_OS_Sleep(500);
  ST7735_Message(0,line++, "Thread dying: ", id);
  PD3 ^= 0x08;
  SVC_OS_Kill();
}
void TestSVC(void){ uint32_t id; uint32_t time;
  // simple SVC test, mimicking real user program
  ST7735_DrawString(0, 0, "SVC test         ", ST7735_WHITE);
  printf("\n\rEE445M/EE380L, Lab 5 SCV Test\n\r");
  id = SVC_OS_Id();
  PD2 ^= 0x04;
  ST7735_Message(0,line++, "SVC test: ", id);
  SVC_OS_AddThread(TestSVCThread, 128, 1);
  time = SVC_OS_Time();
  SVC_OS_Sleep(1000);
  time = (((OS_TimeDifference(time, SVC_OS_Time()))/1000ul)*125ul)/10000ul;
  ST7735_Message(0,line++, "Sleep time: ", time);
  PD2 ^= 0x04;
  if(line != 4) {
    printf("SVC test error");
    OS_Kill();
  }
  printf("Successful SVC test\n\r");
  ST7735_Message(0,0, "SVC test done ", id);
  SVC_OS_Kill();
}

void SWPush3(void){
  if(line>=4){
    line = 0;
    if(OS_AddThread(&TestSVC,128,1)){
      NumCreated++;
    }
  }
}

int Testmain3(void){   // Testmain3 
  OS_Init();           // initialize, disable interrupts
  PortD_Init();

  // attach background tasks
  OS_AddSW1Task(&SWPush3,2);  // PF4, SW1
  OS_AddSW2Task(&SWPush3,2);  // PF0, SW2
  
  // create initial foreground threads
  NumCreated = 0;
  NumCreated += OS_AddThread(&TestSVC,128,1);  
  NumCreated += OS_AddThread(&Idle,128,3); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*******************Trampoline for selecting main to execute**********
int main(void) { 			// main
  realmain();
}
