// SwitchTestMain.c
// Runs on LM4F120/TM4C123
// Test the switch initialization functions by setting the LED
// color according to the status of the switches.
// Daniel and Jonathan Valvano
// Jan 2, 2020

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020
   Example 2.3, Program 2.9, Figure 2.36

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
#include "../inc/tm4c123gh6pm.h"
#include "../inc/SwitchExternal.h"
#include "../inc/LaunchPad.h"

int main(void){ uint32_t status;
  SwitchPA5_Init();           // PA5 is input
  
  LaunchPad_Init();         // initialize PF0 and PF4 and make them inputs
                            // make PF3-1 out (PF3-1 built-in LEDs)
  while(1){
    status = SwitchPA5_Input(); // 0x00 or 0x20
    if(status){                
      LaunchPad_Output(BLUE);   // PA5 high
    }else{
      LaunchPad_Output(RED);   // PA5 log
    }
  }
}
