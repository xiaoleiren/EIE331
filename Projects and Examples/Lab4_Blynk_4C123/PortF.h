// PortF.h
// Runs on LM4F120/TM4C123
// Simple GPIO on Port F.
// Jonathan Valvano
// September 20, 2018

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2018
 
 Copyright 2018 by Jonathan W. Valvano, valvano@mail.utexas.edu
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
#ifndef _PORTFH_
#define _PORTFH_
#include <stdint.h>
#define PF0       (*((volatile uint32_t *)0x40025004))
#define PF1       (*((volatile uint32_t *)0x40025008))
#define PF2       (*((volatile uint32_t *)0x40025010))
#define PF3       (*((volatile uint32_t *)0x40025020))
#define PF4       (*((volatile uint32_t *)0x40025040))
#define SWITCHES  (*((volatile uint32_t *)0x40025044))
#define SW1       0x10    // on the left side of the Launchpad board
#define SW2       0x01    // on the right side of the Launchpad board
#define RED       0x02
#define BLUE      0x04
#define GREEN     0x08
// Initialize PortF switches and LEDs
void PortF_Init(void);
// read switches,
// Bit4 and Bit0 are in negative logic
// returns 0x00,0x01,0x10, or 0x11
uint32_t PortF_Input(void);

// Output to LEDs
// LEDs on bits 1,2,3
void PortF_Output(uint32_t data);
#endif

