// Performance.c
// Runs on TM4C123
// Use the SysTick timer to measure approximately how long it takes to
// calculate a square root.  Also, toggle PF2 to use an oscilloscope
// or logic analyzer to measure the execution time as the high pulse
// time of the LED.
// Daniel Valvano
// July 29, 2014

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
   Program 3.17

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

// oscilloscope connected to PF2

#include <stdint.h>
#include <math.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/PLL.h"
#include "../inc/LaunchPad.h"
#include "../inc/SysTick.h"


volatile uint32_t before, elapsed, ss, tt;
uint32_t offset;
// Newton's method (this one not tested, one in math.h is tested
// s is an integer
// sqrt(s) is an integer
/*unsigned long sqrt(unsigned long s){
unsigned long t;         // t*t will become s
int n;                   // loop counter to make sure it stops running
  t = s/16+1;            // initial guess 
  for(n = 16; n; --n){   // guaranteed to finish
    t = ((t*t+s)/t)/2;  
  }
  return t; 
}*/

//test code
int main(void){ 
  PLL_Init(Bus80MHz);              // bus clock at 80 MHz
  LaunchPad_Init();                // activate port F
  SysTick_Init(); // initialize SysTick timer, see SysTick.c
  before = NVIC_ST_CURRENT_R;
  // nothing
  offset = (before-NVIC_ST_CURRENT_R)&0x00FFFFFF;
    
  ss = 100;
  before = NVIC_ST_CURRENT_R;
  tt = sqrt(ss);
  elapsed = ((before-NVIC_ST_CURRENT_R)&0x00FFFFFF)-offset;
  while(1){
    PF2 = 0x04;                 // turn on LED
    tt = sqrt(ss);
    PF2 = 0x00;                 // turn off LED
    // anything can go here, after the LED goes off before the repeat
    // use the oscilloscope/logic analyzer to measure high pulse time
    // this can be easier to see if there is also some low pulse time
    tt = sqrt(ss);
  }
}
