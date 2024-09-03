// ADCTestMain.c
// Runs on LM4F120/TM4C123
// This program periodically samples ADC channel 8 and 9 and
// stores theresult to a global variable that can be accessed
// with the JTAG debugger and viewed with the variable watch
// feature.
// Daniel Valvano
// May 3, 2015

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015

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

// center of two potentiometers connected to Ain8(PE5) and Ain9 (PE4)
// bottom of potentiometers connected to ground
// top of 10k potentiometers connected to +3.3V 
#include <stdint.h>
#include "../inc/ADCSWTrigger.h"
#include "../inc/tm4c123gh6pm.h"
#include "../inc/PLL.h"
#include "../inc/LaunchPad.h"
#include "../inc/CortexM.h"

uint32_t ADCvalue[2];

int main(void){// uint32_t i;
  PLL_Init(Bus80MHz);                   // 80 MHz
  LaunchPad_Init();                     // activate port F
  ADC_Init89();                         // ADC channels 8 and 9, software start
  while(1){
    PF2 = 0x04;
                          // ADCvalue[0] is ADC8 (PE5) 0 to 4095
                          // ADCvalue[1] is ADC9 (PE4) 0 to 4095
    ADC_In89(ADCvalue);   // take two samples, executes in about 18.64 us
    PF2 = 0x00;
    Clock_Delay(678);     // roughly 10,000 Hz sampling, to account for 18.64 us sample time)
  }
}


