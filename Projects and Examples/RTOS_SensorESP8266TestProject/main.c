//***********************  main.c  ***********************
// Program written by:
// - Steven Prickett  steven.prickett@gmail.com
//
// Brief desicription of program:
// - Initializes an ESP8266 module to act as a WiFi client or server
//
//*********************************************************
/* Modified by Jonathan Valvano March 28, 2017
   Modified by Andreas Gerstlauer April 9, 2020
   
 Out of the box: to make this work you must
 Step 1) Set parameters of your AP in WifiSettings.h
 Step 2) Change line 39 with directions in lines 40-42
 Step 3) Run a terminal emulator like Putty or TExasDisplay at
         115200 bits/sec, 8 bit, 1 stop, no flow control
 Step 4) Set BAUDRATE in WifiSettings.h to match baud rate of your ESP8266 (9600 or 115200)
 Step 5) Some ESP8266 respond with "ok", others with "ready"
         esp8266.c ESP8266_Init/Reset function, try different strings like "ready" and "ok"
 Step 6) Some ESP8266 respond with "ok", others with "no change"
         esp8266.c ESP8266_SetWifiMode function, try different strings like "no change" and "ok"
 Example
 AT+GMR version 0018000902 uses "ready" and "no change"
 AT+GMR version:0.60.0.0 uses "ready" and "ok"
 
 */

#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/pll.h"
#include "../inc/UART0int.h"
#include "../inc/LED.h"
#include "../inc/CortexM.h"
#include "ST7735.h"
#include "esp8266.h"
// prototypes for functions defined in startup.s


// Client or Server ESP8266 Initialization
// 0 means client, != 0 means server at specified port
// #define SERVER       80   // port 80 is for http

// Transparently forwarding debug mode
// #define TRANSPARENT  1


#if ! TRANSPARENT && ! SERVER

const char Fetch[] = "GET /data/2.5/weather?q=Austin&APPID=1bc54f645c5f1c75e681c102ed4bbca4 HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
//char Fetch[] = "GET /data/2.5/weather?q=Austin%20Texas&APPID=1234567890abcdef1234567890abcdef HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
// 1) go to http://openweathermap.org/appid#use 
// 2) Register on the Sign up page
// 3) get an API key (APPID) replace the 1234567890abcdef1234567890abcdef with your APPID

char Response[512];

int main(void){ uint32_t len; char *s; char *e; int32_t data; 
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  LED_Init();  
  Output_Init();       // UART0 only used for debugging
  EnableInterrupts();
  ST7735_InitR(INITR_REDTAB);
  ST7735_DrawString(0,0,"ESP8266 Client Test",ST7735_WHITE); 
  if(!ESP8266_Init(true,false)) {  // initialize with rx echo
    ST7735_DrawString(0,1,"No Wifi adapter",ST7735_YELLOW); 
    printf("\r\n---No ESP detected\r\n");
    while(1) {}
  }
  printf("\r\n-----------System starting...\r\n");
  ESP8266_GetVersionNumber();
  if(!ESP8266_Connect(true)) {  // connect to access point
    ST7735_DrawString(0,1,"No Wifi network",ST7735_YELLOW); 
    printf("\r\n---Failure connecting to access point\r\n");
    while(1) {}
  }
  ST7735_DrawString(0,1,"Wifi connected",ST7735_GREEN);
  LED_BlueOn();
  while(1){
    ESP8266_GetStatus();
    if(ESP8266_MakeTCPConnection("api.openweathermap.org", 80, 0, false)){ // open socket to web server on port 80
      if(ESP8266_Send(Fetch)){  // send request 
        if(ESP8266_Receive(Response, 512)){  // receive response
          if(strncmp(Response, "HTTP", 4) == 0) { // received HTTP response?
            ST7735_DrawString(0,2,"Weather fetched",ST7735_YELLOW);
            LED_BlueOff();
            LED_GreenOn();
            len = 0;    
            while(strlen(Response)) {  // parse HTTP headers until empty line
              if(!ESP8266_Receive(Response, 512)){
                len = 0;
                break;
              }
              if(strncmp(Response, "Content-Length: ", 16) == 0) { 
                len = atol(Response+16); // get HTML body size
              }
            }
            if(len) {   // Get HTML body and parse for weather info
              ESP8266_Receive(Response, (len < 512)? (len+1) : 512);
              s = strstr(Response, "\"temp\":");  // get temperature
              if(s){
                data = atol(s+7);
                ST7735_DrawString(0,9,"Temp [K]: ",ST7735_YELLOW);
                ST7735_SetCursor(10,9);
                ST7735_OutUDec(data);
              }
              s = strstr(Response, "\"description\":"); // get description    
              if(s){
                e = strchr(s+15, '"'); // find end of substring
                if(e){  
                  *e = 0;  // temporarily terminate with zero
                  ST7735_DrawString(0,8,s+15,ST7735_YELLOW);
                }
              }
            } else {
              ST7735_DrawString(0,2,"Empty response",ST7735_YELLOW); 
            }    
          } else {
            ST7735_DrawString(0,2,"Invalid response",ST7735_YELLOW); 
          }
        } else {
          ST7735_DrawString(0,2,"No response",ST7735_YELLOW); 
        }
      } else {
        ST7735_DrawString(0,2,"Send failed",ST7735_YELLOW); 
      }      
      ESP8266_CloseTCPConnection();  // close connection   
    } else { 
      ST7735_DrawString(0,2,"Connection failed",ST7735_YELLOW); 
    }          
    while(Board_Input()==0){// wait for touch
    }; 
    ST7735_DrawString(0,2,"                 ",ST7735_YELLOW);
    LED_GreenOff();
    LED_BlueOn();
    LED_RedToggle();
  }
}

#elif SERVER

/*
======================================================================================================================
==========                                     Simple HTTP SERVER                                           ==========
======================================================================================================================
*/

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

/*
===================================================================================================
  HTTP :: HTTP_ServePage  
   - constructs and sends a web page via the ESP8266 server
   - NOTE: this seems to work for sending pages to Firefox (and maybe other PC-based browsers),
           but does not seem to load properly on iPhone based Safari. May need to add some more
           data to the header.
===================================================================================================
*/
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

char HTTP_Request[64];

int main(void){  
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  LED_Init();  
  Output_Init();       // UART0 only used for debugging
  EnableInterrupts();
  ST7735_InitR(INITR_REDTAB);
  ST7735_DrawString(0,0,"ESP8266 Server Test",ST7735_WHITE); 
  if(!ESP8266_Init(true,false)) {  // initialize with rx echo
    ST7735_DrawString(0,1,"No Wifi adapter",ST7735_YELLOW); 
    printf("\r\n---No ESP detected\r\n");
    while(1) {}
  }
  printf("\r\n-----------System starting...\r\n");
  ESP8266_GetVersionNumber();
  if(!ESP8266_Connect(true)) {  // connect to access point
    ST7735_DrawString(0,1,"No Wifi network",ST7735_YELLOW); 
    printf("\r\n---Failure connecting to access point\r\n");
    while(1) {}
  }
  ST7735_DrawString(0,1,"Wifi connected",ST7735_GREEN);
  if(!ESP8266_StartServer(SERVER,600)) {  // 5min timeout
    ST7735_DrawString(0,2,"Server failure",ST7735_YELLOW); 
    printf("\r\n---Failure starting server\r\n");
    while(1) {}
  }  
  ST7735_DrawString(0,2,"Server started",ST7735_GREEN);
  LED_BlueOn();
  while(1) {
    // Wait for connection
    ESP8266_WaitForConnection();
    ST7735_DrawString(0,3,"Connected           ",ST7735_YELLOW); 
    
    // Receive request
    if(!ESP8266_Receive(HTTP_Request, 64)){
      ST7735_DrawString(0,3,"No request",ST7735_YELLOW); 
      ESP8266_CloseTCPConnection();
      continue;
    }
    
    // check for HTTP GET
    if(strncmp(HTTP_Request, "GET", 3) == 0) {
      char* messagePtr = strstr(HTTP_Request, "?message=");
      if(messagePtr) {
        // Clear any previous message
        ST7735_DrawString(0,8,"                    ",ST7735_YELLOW); 
        // Process form reply
        if(HTTP_ServePage(statusBody)) {
          ST7735_DrawString(0,3,"Served status",ST7735_YELLOW);     
          LED_GreenOff();
          LED_BlueOn();
        } else {
          ST7735_DrawString(0,3,"Error serving status",ST7735_YELLOW); 
        }
        // Terminate message at first separating space
        char* messageEnd = strchr(messagePtr, ' ');
        if(messageEnd) *messageEnd = 0;  // terminate with null character
        // Print message on terminal
        ST7735_DrawString(0,8,messagePtr + 9,ST7735_YELLOW); 
        printf("\r\n---Message from the Internet: %s\r\n", messagePtr + 9);
      } else {
        // Serve web page
        if(HTTP_ServePage(formBody)) {
          ST7735_DrawString(0,3,"Served form",ST7735_YELLOW); 
          LED_BlueOff();
          LED_GreenOn();
        } else {
          ST7735_DrawString(0,3,"Error serving form",ST7735_YELLOW); 
        }         
      }        
    } else {
      // handle data that may be sent via means other than HTTP GET
      ST7735_DrawString(0,3,"Not a GET request",ST7735_YELLOW); 
    }
    LED_RedToggle();
    ESP8266_CloseTCPConnection();
  }
}

#else  // TRANSPARENT

// transparent mode for testing
void ESP8266_SendCommand(char *);
void ESP8266_OutChar(char);
int main(void){  char data;
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  LED_Init();  
  Output_Init();       // UART0 as a terminal
  EnableInterrupts();
  if(!ESP8266_Init(true,false)) {  // initialize with rx echo
    printf("\r\n---No ESP detected\r\n");
    while(1) {}
  }
  printf("\r\n-----------System starting...\r\n");
  ESP8266_Reset();
//  ESP8266_SendCommand("AT+UART=115200,8,1,0,3\r\n");
//  data = UART_InChar();
  
  while(1){
// echo data back and forth
    data = UART_InCharNonBlock();
    if(data){
      ESP8266_OutChar(data);
    }
  }
}

#endif
