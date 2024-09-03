// TExaSdisplayMain.c
// Runs on TM4C123
// Main program for the TExaSdisplay demo that initializes
// ports and toggles Profile pins to be seen on both the
// TExaSdisplay interface and on an actual logic analyzer
// connected to the Profile pins.
// Daniel Valvano
// Jan 3, 2020

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020

   Program 5.12, section 5.7

 Copyright 2020 by Jonathan W. Valvano, valvano@mail.utexas.edu
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

// oscilloscope or logic analyzer to profile the system
// J3.27/PE1 Profile 0
// J3.28/PE2 Profile 1
// Virtual logic analyzer Bit0
// Virtual scope PD3

#include <stdint.h>
#include "../inc/CortexM.h"
#include "../inc/Profile.h"
#include "../inc/TExaS.h"
#include "../inc/SysTickInts.h"
#include "../inc/PLL.h"

volatile uint32_t IntCounts;
volatile uint32_t MainCounts;

// Interrupt service routine
// Executed every 12.5ns*(period)
void SysTick_Handler(void){
  Profile_Toggle0();          // toggle real logic analyzer bit
  Profile_Toggle0();          // toggle real logic analyzer bit
  TExaS_Task0();              // toggle TExaS logic analyzer
  IntCounts = IntCounts + 1;
  Profile_Toggle0();          // toggle real logic analyzer bit
}

int main(void){// bus clock at 80 MHz
  PLL_Init(Bus80MHz); // ADC requires PLL to be active
  Profile_Init();
  IntCounts = 0; MainCounts=0;
//  TExaS_Init(SCOPE,80000000);
  TExaS_Init(LOGICANALYZER,80000000);
  SysTick_Init(800000);     // initialize SysTick timer
  EnableInterrupts();
  while(1){                 // interrupts every 10ms
    Profile_Toggle1();      // toggle bit
    MainCounts++;
    if((MainCounts%10000) == 0){
      TExaS_Task1();        // toggle every 10000 times 
    }  
  }
}
