// Main.c
// Runs on LM4F120/TM4C123
// Use Timer2A in 32-bit periodic mode to request interrupts at a periodic rate
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
#include "../inc/Timer2A.h"
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"

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
  PLL_Init(Bus80MHz);           // bus clock at 80 MHz
  LaunchPad_Init();             // activate port F
  Timer2A_Init(&UserTask, F2HZ,2); // initialize timer2 (2 Hz)
  EnableInterrupts();

  while(1){
    WaitForInterrupt();
  }
}
