// PeriodicSysTickInts.c
// Runs on LM4F120
// Use the SysTick timer to request interrupts at a particular period.
// Daniel Valvano
// March 7, 2016

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015

   Program 5.12, section 5.7

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

// oscilloscope or LED connected to PF2 for period measurement
#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/SysTickInts.h"
#include "../inc/PLL.h"
#include "../inc/TExaS.h"
#include "../inc/LaunchPad.h"
#include "../inc/CortexM.h"

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

volatile uint32_t Counts = 0;

int main(void){
// pick one of the following three lines, all three set PLL to 80 MHz
  //PLL_Init(Bus80MHz);              // 1) call to have no TExaS debugging
  TExaS_SetTask(&LogicAnalyzerTask); // 2) call to activate logic analyzer
  //TExaS_SetTask(&ScopeTask);       // or 3) call to activate analog scope PD3
  
  LaunchPad_Init();           // activate port F
  PortB_Init();               // PB5,4
  Counts = 0;
  SysTick_Init(80000);        // initialize SysTick timer
  EnableInterrupts();

  while(1){                   // interrupts every 1ms, 500 Hz flash
    PB5 ^= 0x20;              // toggle PB5
  }
}

// Interrupt service routine
// Executed every 12.5ns*(period)
void SysTick_Handler(void){
  PF2 ^= 0x04;                // toggle PF2
  Counts = Counts + 1;
}

uint8_t Duty; // 1 to 99
#define PB0 (*((volatile uint32_t *)0x40005004))
#define CAL 25   // cycles to service interrupt
void Init2(void){
  NVIC_ST_RELOAD_R = 16000*Duty-CAL;   // reload value for high
  NVIC_ST_CTRL_R = 7;               // activate and enable interrupts
  PB0 = 0x01;
  EnableInterrupts();         // I = 0
}
void SysTick_Handler2(void){
  if(PB0){        // end of high pulse
    PB0 = 0x00;   // make it low
    NVIC_ST_RELOAD_R = 16000*(100-Duty)-CAL; // reload value for low
  }else{          // end of low pulse
    PB0 = 0x01;   // now high
    NVIC_ST_RELOAD_R = 16000*Duty-CAL;       // reload value for high
  }
}
int main2(void){
  PLL_Init(Bus16MHz);         // bus clock at 16 MHz
  SYSCTL_RCGCGPIO_R |= 0x02;  // activate port B
  Duty=25;
  Init2();
  GPIO_PORTB_DIR_R |= 0x01;   // make PB0 output 
  GPIO_PORTB_AFSEL_R &= ~0x01;// disable alt funct on PB0
  GPIO_PORTB_DEN_R |= 0x01;   // enable digital I/O on PB0
  while(1);
}









