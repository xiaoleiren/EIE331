// main.c
// Runs on TM4C123
// Measures frequency on PB7/T0CCP1 input
// Timer0A in periodic mode to request interrupts at 100 Hz
// Daniel Valvano,  Jonathan Valvano
// July 11. 2015

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
  Program 6.9, example 6.8

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

// oscilloscope or LED connected to PF3-1 for profiling

#include "../inc/tm4c123gh6pm.h"
#include <stdint.h>
#include "../inc/PLL.h"
#include "../inc/FreqMeasure.h"
#include "../inc/LaunchPad.h"
#include "../inc/CortexM.h"


// debugging profile 

#define LEDS      (*((volatile uint32_t *)0x40025038))

// connect PF1 to PB7
extern uint32_t Freq;   /* Frequency with units of 100 Hz */
extern int Done;

//test code
uint32_t Time;
void SquareWave(void){uint32_t i;
  PF1 = 0;
  for(i=0; i<Time; i++){};
  PF1 = 0x02;  // red
  for(i=0; i<Time; i++){}; 
}
int main(void){ 
  Time = 1;
  PLL_Init(Bus16MHz);    // bus clock at 16 MHz
  LaunchPad_Init();
  LEDS = 0;
  FreqMeasure_Init();     // initialize timer0A (100 Hz)
  EnableInterrupts();

  while(1){
    while(PF4==0){SquareWave();}; // wait for release       
    while(PF4){SquareWave();};    // wait for touch 
    Done = 0;
    while(Done==0){SquareWave();} 
    PF2 ^= 0x04;   // Blue
    Time = 2*Time; // slower
  }
}
