// PLLTestMain.c
// Runs on LM4F120/TM4C123
// Test the PLL function to verify that the system clock is
// running at the expected rate.  Use the debugger if possible
// or an oscilloscope connected to PF2.
// The #define statement in the file PLL.h allows PLL_Init() to
// initialize the PLL to the desired frequency.  When using an
// oscilloscope to look at LED1, it should be clear to see that
// the LED flashes about 2 (80/40) times faster with a 80 MHz 
// clock than with a 40 MHz clock.
// Daniel Valvano
// Jan 1, 2020

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020
   Program 2.10, Figure 2.37

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

#include <stdint.h>
#include "../inc/PLL.h"
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"

int main(void){  
  PLL_Init(Bus80MHz);
  LaunchPad_Init();   // activate port F
  while(1){
    PF2 = 0x04;                // turn on LED1 (blue)
    Clock_Delay1ms(500);       // delay ~0.5 sec at 80 MHz
    PF2 = 0x00;                // turn off LED1 (blue)
    Clock_Delay1ms(500);       // delay ~0.5 sec at 80 MHz
  }
}
