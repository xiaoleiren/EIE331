// os.c
// Runs on LM4F120/TM4C123
// A very simple real time operating system with minimal features.
// Daniel Valvano
// Feb 25, 2017

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2017

   Programs 4.4 through 4.12, section 4.2

 Copyright 2017 by Jonathan W. Valvano, valvano@mail.utexas.edu
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
#include "os.h"
#include "../inc/PLL.h"

#define NVIC_ST_CTRL_R          (*((volatile uint32_t *)0xE000E010))
#define NVIC_ST_CTRL_CLK_SRC    0x00000004  // Clock Source
#define NVIC_ST_CTRL_INTEN      0x00000002  // Interrupt enable
#define NVIC_ST_CTRL_ENABLE     0x00000001  // Counter mode
#define NVIC_ST_RELOAD_R        (*((volatile uint32_t *)0xE000E014))
#define NVIC_ST_CURRENT_R       (*((volatile uint32_t *)0xE000E018))
#define NVIC_INT_CTRL_R         (*((volatile uint32_t *)0xE000ED04))
#define NVIC_INT_CTRL_PENDSTSET 0x04000000  // Set pending SysTick interrupt
#define NVIC_SYS_PRI3_R         (*((volatile uint32_t *)0xE000ED20))  // Sys. Handlers 12 to 15 Priority

// function definitions in osasm.s
void OS_DisableInterrupts(void); // Disable interrupts
void OS_EnableInterrupts(void);  // Enable interrupts
void StartOS(void);

#define STACKSIZE 100
uint32_t *tcbs[4];  
uint32_t RunI;  // index of currently running thread (0,1,2,3)
uint32_t Stacks[4][STACKSIZE]; 
void OS_AddThreads(void(*task0)(void), void(*task1)(void),
                 void(*task2)(void), void(*task3)(void)){ 
  tcbs[0] = &Stacks[0][STACKSIZE-16]; // thread stack pointer 
  Stacks[0][STACKSIZE-1] = 0x01000000;   // thumb bit
  Stacks[0][STACKSIZE-2] = (int32_t)(task0); // PC
  tcbs[1] = &Stacks[1][STACKSIZE-16]; // thread stack pointer 
  Stacks[1][STACKSIZE-1] = 0x01000000;   // thumb bit
  Stacks[1][STACKSIZE-2] = (int32_t)(task1); // PC
  tcbs[2] = &Stacks[2][STACKSIZE-16]; // thread stack pointer 
  Stacks[2][STACKSIZE-1] = 0x01000000;   // thumb bit
  Stacks[2][STACKSIZE-2] = (int32_t)(task2); // PC
  tcbs[3] = &Stacks[3][STACKSIZE-16]; // thread stack pointer 
  Stacks[3][STACKSIZE-1] = 0x01000000;   // thumb bit
  Stacks[3][STACKSIZE-2] = (int32_t)(task3); // PC
  RunI = 0;       // thread 0 will run first
}   


// ******** OS_Init ************
// initialize operating system, disable interrupts until OS_Launch
// initialize OS controlled I/O: systick, 50 MHz PLL
// input:  none
// output: none
void OS_Init(void){
  OS_DisableInterrupts();
  PLL_Init(Bus50MHz);         // set processor clock to 50 MHz
  NVIC_ST_CTRL_R = 0;         // disable SysTick during setup
  NVIC_ST_CURRENT_R = 0;      // any write to current clears it
  NVIC_SYS_PRI3_R =(NVIC_SYS_PRI3_R&0x00FFFFFF)|0xE0000000; // priority 7
}




///******** OS_Launch ***************
// start the scheduler, enable interrupts
// Inputs: number of 20ns clock cycles for each time slice
//         (maximum of 24 bits)
// Outputs: none (does not return)
void OS_Launch(uint32_t theTimeSlice){
  NVIC_ST_RELOAD_R = theTimeSlice - 1; // reload value
  NVIC_ST_CTRL_R = 0x00000007; // enable, core clock and interrupt arm
  StartOS();                   // start on the first task
}
