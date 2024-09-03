// Main.c
// Runs on LM4F120/TM4C123
// Use Timer2 in 32-bit periodic mode to request interrupts at a periodic rate
// Daniel Valvano
// May 5, 2015

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
  Program 7.5, example 7.6

 Copyright 2015 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

// oscilloscope or LED connected to PF3-1 for period measurement
// When using the color wheel, the blue LED on PF2 is on for four
// consecutive interrupts then off for four consecutive interrupts.
// Blue is off for: dark, red, yellow, green
// Blue is on for: light blue, blue, purple, white
// Therefore, the frequency of the pulse measured on PF2 is 1/8 of
// the frequency of the Timer interrupts.
#include <stdint.h>
#include "../inc/PLL.h"
#include "../inc/Timer1A.h"
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/TExaS.h"

//********************************************************************************
// debuging profile, pick up to 7 unused bits and send to Logic Analyzer
#define PB54                  (*((volatile uint32_t *)0x400050C0)) // bits 5-4
#define PF321                 (*((volatile uint32_t *)0x40025038)) // bits 3-1
// use for debugging profile
#define PF1       (*((volatile uint32_t *)0x40025008))
#define PF2       (*((volatile uint32_t *)0x40025010))
#define PF3       (*((volatile uint32_t *)0x40025020))
#define PB5       (*((volatile uint32_t *)0x40005080)) 
#define PB4       (*((volatile uint32_t *)0x40005040)) 
// TExaSdisplay logic analyzer shows 7 bits 0,PB5,PB4,PF3,PF2,PF1,0 
// edit this to output which pins you use for profiling
// you can output up to 7 pins
void LogicAnalyzerTask(void){
  UART0_DR_R = 0x80|PF321|PB54; // sends at 10kHz
}
void ScopeTask(void){  // called 10k/sec
  UART0_DR_R = (ADC1_SSFIFO3_R>>4); // send ADC to TExaSdisplay
}
// edit this to initialize which pins you use for profiling
void PortB_Init(void){
  SYSCTL_RCGCGPIO_R |= 0x02;      // activate port B,F
  while((SYSCTL_PRGPIO_R&0x02) != 0x02){};
  GPIO_PORTB_DIR_R |=  0x30;   // output on PB4 PB5
  GPIO_PORTB_DEN_R |=  0x30;   // enable on PB4 PB5  
}

#define WHEELSIZE 8           // must be an integer power of 2
                              //    red, yellow,    green, light blue, blue, purple,   white,          dark
const uint32_t COLORWHEEL[WHEELSIZE] = {RED, RED+GREEN, GREEN, GREEN+BLUE, BLUE, BLUE+RED, RED+GREEN+BLUE, 0};


void UserTask(void){
  static uint32_t i = 0;
  LaunchPad_Output(COLORWHEEL[i&(WHEELSIZE-1)]);
  i = i + 1;
}
#define F2HZ (80000000/2)

//debug code
int main(void){ 
// pick one of the following three lines, all three set PLL to 80 MHz
  //PLL_Init(Bus80MHz);              // 1) call to have no TExaS debugging
  TExaS_SetTask(&LogicAnalyzerTask); // 2) call to activate logic analyzer
  //TExaS_SetTask(&ScopeTask);       // or 3) call to activate analog scope PD2
  PortB_Init();
  
  LaunchPad_Init();               // activate port F 
  Timer1A_Init(&UserTask, F2HZ,2);   // initialize timer1 (2 Hz)
  EnableInterrupts();

  while(1){
    WaitForInterrupt();
    PB5 ^= 0x20; // profile
  }
}
