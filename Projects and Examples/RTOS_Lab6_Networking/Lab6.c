// Lab6.c
// Runs on LM4F120/TM4C123
// Real Time Operating System for Lab 6

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
#include <stdbool.h> 
#include <stdio.h> 
#include <string.h>
#include <stdlib.h>
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
#include "../RTOS_Labs_common/can0.h"
#include "../RTOS_Labs_common/esp8266.h"


// CAN IDs are set dynamically at time of CAN0_Open
// Reverse on other microcontroller
#define RCV_ID 2
#define XMT_ID 4

//*********Prototype for PID in PID_stm32.s, STMicroelectronics
short PID_stm32(short Error, short *Coeff);
short IntTerm;     // accumulated error, RPM-sec
short PrevError;   // previous error, RPM

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

//*******************final user main - bare bones OS, extend with your code**********
int realmain(void){ // realmain
  OS_Init();        // initialize, disable interrupts
  PortD_Init();     // debugging profile
  Heap_Init();      // initialize heap
  MaxJitter = 0;    // in 1us units
	
  // hardware init
  ADC_Init(0);  // sequencer 3, channel 0, PE3, sampling in Interpreter
  CAN0_Open(RCV_ID,XMT_ID);    

  // attach background tasks
  OS_AddPeriodicThread(&disk_timerproc,TIME_1MS,0);   // time out routines for disk  

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
// CAN test, exchange CAN messages with second instance
uint8_t XmtData[4];
uint8_t RcvData[4];
uint32_t RcvCount=0;
uint8_t sequenceNum=0;  

// periodic background task to send CAN message
void CANSendTask(void){
  XmtData[0] = PF0<<1;  // 0 or 2
  XmtData[1] = PF4>>2;  // 0 or 4
  XmtData[2] = 0;       // unassigned field
  XmtData[3] = sequenceNum;  // sequence count
  CAN0_SendData(XmtData);
  sequenceNum++;
}

// foreground receiver task 
void CANReceiveTask(void){
  while(1){
    CAN0_GetMail(RcvData);
    RcvCount++;
    ST7735_Message(1,0,"RcvCount   = ",RcvCount); 
    ST7735_Message(1,0,"RcvData[0] = ",RcvData[0]); 
    ST7735_Message(1,0,"RcvData[1] = ",RcvData[1]);
  } 
}

void ButtonWork1(void){
  uint32_t myId = OS_Id(); 
  ST7735_Message(0,1,"SequenceNum = ",sequenceNum); 
  OS_Kill();  // done, OS does not return from a Kill
} 

void SW1Push1(void){
  if(OS_MsTime() > 20){ // debounce
    if(OS_AddThread(&ButtonWork1,128,1)){
      NumCreated++;
    }
    OS_ClearMsTime();  // at least 20ms between touches
  }
}

int Testmain1(void){   // Testmain1
  OS_Init();           // initialize, disable interrupts
  PortD_Init();

  // Initialize CAN with given IDs
  CAN0_Open(RCV_ID,XMT_ID);    

  // attach background tasks
  OS_AddPeriodicThread(&CANSendTask,80000000/10,2);   // 10 Hz  
  OS_AddSW1Task(&SW1Push1,2);
  
  // create initial foreground threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Idle,128,3); 
  NumCreated += OS_AddThread(&CANReceiveTask,128,2); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*****************Test project 2*************************
// ESP8266 Wifi client test, fetch weather info from internet 

const char Fetch[] = "GET /data/2.5/weather?q=Austin&APPID=1bc54f645c5f1c75e681c102ed4bbca4 HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
//char Fetch[] = "GET /data/2.5/weather?q=Austin%20Texas&APPID=1234567890abcdef1234567890abcdef HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
// 1) go to http://openweathermap.org/appid#use 
// 2) Register on the Sign up page
// 3) get an API key (APPID) replace the 1234567890abcdef1234567890abcdef with your APPID

char Response[64];
uint32_t Running;           // true while fetch is running
void FetchWeather(void){ uint32_t len; char *p; char *s; char *e; 
  int32_t data;
  ST7735_DrawString(0,2,"                 ",ST7735_YELLOW);
  ESP8266_GetStatus();  // debugging
  // Fetch weather from server
  if(!ESP8266_MakeTCPConnection("api.openweathermap.org", 80, 0, false)){ // open socket to web server on port 80
    ST7735_DrawString(0,2,"Connection failed",ST7735_YELLOW); 
    Running = 0;
    OS_Kill();
  }    
  // Send request to server
  if(!ESP8266_Send(Fetch)){
    ST7735_DrawString(0,2,"Send failed",ST7735_YELLOW); 
    ESP8266_CloseTCPConnection();
    Running = 0;
    OS_Kill();
  }    
  // Receive response
  if(!ESP8266_Receive(Response, 64)) {
    ST7735_DrawString(0,2,"No response",ST7735_YELLOW); 
    ESP8266_CloseTCPConnection();
    Running = 0;
    OS_Kill();
  }
  if(strncmp(Response, "HTTP", 4) == 0) { 
    // We received a HTTP response
    ST7735_DrawString(0,2,"Weather fetched",ST7735_YELLOW);
    // Parse HTTP headers until empty line
    len = 0;    
    while(strlen(Response)) {
      if(!ESP8266_Receive(Response, 64)) {
        len = 0;
        break;
      }
      // check for body size
      if(strncmp(Response, "Content-Length: ", 16) == 0) { 
        len = atol(Response+16);
      }
    }
    if(len) {
      // Get HTML body and parse for weather info
      p = Heap_Malloc(len+1);
      ESP8266_Receive(p, len+1);
      s = strstr(p, "\"temp\":");  // get temperature
      if(s){
        data = atol(s+7);
        ST7735_Message(1,1,"Temp [K]: ",data);
      }
      s = strstr(p, "\"description\":");  // get description   
      if(s){
        e = strchr(s+15, '"'); // find end of substring
        if(e){  
          *e = 0;  // temporarily terminate with zero
          ST7735_DrawString(0,8,s+15,ST7735_YELLOW);
        }
      }
      Heap_Free(p);
    } else {
      ST7735_DrawString(0,2,"Empty response",ST7735_YELLOW); 
    }
  } else {
    ST7735_DrawString(0,2,"Invalid response",ST7735_YELLOW); 
  }    
  // Close connection and end
  ESP8266_CloseTCPConnection();
  Running = 0;
  OS_Kill();
}
void ConnectWifi(void){
  // Initialize and bring up Wifi adapter  
  if(!ESP8266_Init(true,false)) {  // verbose rx echo on UART for debugging
    ST7735_DrawString(0,1,"No Wifi adapter",ST7735_YELLOW); 
    OS_Kill();
  }
  // Get Wifi adapter version (for debugging)
  ESP8266_GetVersionNumber(); 
  // Connect to access point
  if(!ESP8266_Connect(true)) {  
    ST7735_DrawString(0,1,"No Wifi network",ST7735_YELLOW); 
    OS_Kill();
  }
  ST7735_DrawString(0,1,"Wifi connected",ST7735_GREEN);
  // Launch thread to fetch weather  
  if(OS_AddThread(&FetchWeather,128,1)) NumCreated++;
  // Kill thread (should really loop to check and reconnect if necessary
  OS_Kill(); 
}  

void SW1Push2(void){
  if(!Running){ 
    Running = 1;  // don't start twice
    if(OS_AddThread(&FetchWeather,128,1)){
      NumCreated++;
    }
  }
}

int Testmain2(void){   // Testmain2
  OS_Init();           // initialize, disable interrupts
  PortD_Init();
  Heap_Init(); 
  Running = 1; 
  
  // attach background tasks
  OS_AddSW1Task(&SW1Push2,2);
  
  // create initial foreground threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Idle,128,3); 
  NumCreated += OS_AddThread(&ConnectWifi,128,2); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*****************Test project 3*************************
// ESP8266 web server test, serve a web page with a form to submit message

const char formBody[] = 
  "<!DOCTYPE html><html><body><center> \
  <h1>Enter a message to send to your microcontroller:</h1> \
  <form> \
  <input type=\"text\" name=\"message\" value=\"Hello ESP8266!\"> \
  <br><input type=\"submit\" value=\"Go!\"> \
  </form></center></body></html>";
const char statusBody[] = 
  "<!DOCTYPE html><html><body><center> \
  <h1>Message sent successfully!</h1> \
  </body></html>";
Sema4Type WebServerSema;
int HTTP_ServePage(const char* body){
  char header[] = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nConnection: close\r\nContent-Length: ";
    
  char contentLength[16];
  sprintf(contentLength, "%d\r\n\r\n", strlen(body));

  if(!ESP8266_SendBuffered(header)) return 0;
  if(!ESP8266_SendBuffered(contentLength)) return 0;
  if(!ESP8266_SendBuffered(body)) return 0;    
  
  if(!ESP8266_SendBufferedStatus()) return 0;
  
  return 1;
}
void ServeHTTPRequest(void){ 
  ST7735_DrawString(0,3,"Connected           ",ST7735_YELLOW); 
  
  // Receive request
  if(!ESP8266_Receive(Response, 64)){
    ST7735_DrawString(0,3,"No request",ST7735_YELLOW); 
    ESP8266_CloseTCPConnection();
    OS_Signal(&WebServerSema);
    OS_Kill();
  }
    
  // check for HTTP GET
  if(strncmp(Response, "GET", 3) == 0) {
    char* messagePtr = strstr(Response, "?message=");
    if(messagePtr) {
      // Clear any previous message
      ST7735_DrawString(0,8,"                    ",ST7735_YELLOW); 
      // Process form reply
      if(HTTP_ServePage(statusBody)) {
        ST7735_DrawString(0,3,"Served status",ST7735_YELLOW); 
        
      } else {
        ST7735_DrawString(0,3,"Error serving status",ST7735_YELLOW); 
      }
      // Terminate message at first separating space
      char* messageEnd = strchr(messagePtr, ' ');
      if(messageEnd) *messageEnd = 0;  // terminate with null character
      // Print message on terminal
      ST7735_DrawString(0,8,messagePtr + 9,ST7735_YELLOW); 
    } else {
      // Serve web page
      if(HTTP_ServePage(formBody)) {
        ST7735_DrawString(0,3,"Served form",ST7735_YELLOW); 
      } else {
        ST7735_DrawString(0,3,"Error serving form",ST7735_YELLOW); 
      }
    }        
  } else {
    // handle data that may be sent via means other than HTTP GET
    ST7735_DrawString(0,3,"Not a GET request",ST7735_YELLOW); 
  }
  ESP8266_CloseTCPConnection();
  OS_Signal(&WebServerSema);
  OS_Kill();
}
void WebServer(void){
  // Initialize and bring up Wifi adapter  
  if(!ESP8266_Init(true,false)) {  // verbose rx echo on UART for debugging
    ST7735_DrawString(0,1,"No Wifi adapter",ST7735_YELLOW); 
    OS_Kill();
  }
  // Get Wifi adapter version (for debugging)
  ESP8266_GetVersionNumber(); 
  // Connect to access point
  if(!ESP8266_Connect(true)) {  
    ST7735_DrawString(0,1,"No Wifi network",ST7735_YELLOW); 
    OS_Kill();
  }
  ST7735_DrawString(0,1,"Wifi connected",ST7735_GREEN);
  if(!ESP8266_StartServer(80,600)) {  // port 80, 5min timeout
    ST7735_DrawString(0,2,"Server failure",ST7735_YELLOW); 
    OS_Kill();
  }  
  ST7735_DrawString(0,2,"Server started",ST7735_GREEN);
  
  while(1) {
    // Wait for connection
    ESP8266_WaitForConnection();
    
    // Launch thread with higher priority to serve request
    if(OS_AddThread(&ServeHTTPRequest,128,1)) NumCreated++;
    
    // The ESP driver only supports one connection, wait for the thread to complete
    OS_Wait(&WebServerSema);
  }
}  

int Testmain3(void){   // Testmain3
  OS_Init();           // initialize, disable interrupts
  PortD_Init();
  
  OS_InitSemaphore(&WebServerSema,0);
  
  // create initial foreground threads
  NumCreated = 0 ;
  NumCreated += OS_AddThread(&Idle,128,3); 
  NumCreated += OS_AddThread(&WebServer,128,2); 
 
  OS_Launch(10*TIME_1MS); // doesn't return, interrupts enabled in here
  return 0;               // this never executes
}

//*******************Trampoline for selecting main to execute**********
int main(void) { 			// main
  realmain();
}
