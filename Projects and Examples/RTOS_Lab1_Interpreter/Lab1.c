//*****************************************************************************
// Lab1.c - main program
//*****************************************************************************

// Jonathan W. Valvano 1/10/20, valvano@mail.utexas.edu
// EE445M/EE380L.6 
// Simply put, develop a TM4C123 project with 
// 1) an interpreter running via the UART link to the PC, 
// 2) an LCD that has two logically separate displays implemented on one physical display, 
// 3) a periodic interrupt that maintains time, and 
// 4) an ADC device driver that collects data using a second periodic interrupt. 
// There are a lot of specifications outlined in this lab, however, 
// you are free to modify specifications as long as the above four components are implemented and understood. 

// IR distance sensors
// J5/A3/PE3 analog channel 0  
// J6/A2/PE2 analog channel 1 
// J7/A1/PE1 analog channel 2
// J8/A0/PE0 analog channel 3 <- connect an IR distance sensor to J8 to get a realistic analog signal on PE0

// Analog inputs
// PE0 Ain3 sampled at 10Hz, sequencer 3, by DAS, using software start in ISR

#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/LPF.h"
#include "../inc/PLL.h"
#include "../inc/Timer4A.h"
#include "../inc/UART0int.h"
#include "../inc/IRDistance.h"
#include "../RTOS_Labs_common/OS.h"
#include "../RTOS_Labs_common/ADC.h"
#include "../RTOS_Labs_common/Interpreter.h"
#include "../RTOS_Labs_common/ST7735.h"


int32_t ADCdata,FilterOutput,Distance;
uint32_t FilterWork;

// periodic task
void DAStask(void){  // runs at 10Hz in background
  PF1 ^= 0x02;
  ADCdata = ADC_In();  // channel set when calling ADC_Init
  PF1 ^= 0x02;
  FilterOutput = Median(ADCdata); // 3-wide median filter
  Distance = IRDistance_Convert(FilterOutput,0);
  FilterWork++;        // calculation finished
  PF1 ^= 0x02;
}


//*******************lab 1 main **********
int main(void){ 
  PLL_Init(Bus80MHz);
  UART_Init();       // serial I/O for interpreter
  ST7735_InitR(INITR_REDTAB); // LCD initialization
  LaunchPad_Init();  // debugging profile on PF1
  ADC_Init(3);       // channel 3 is PE0 <- connect an IR distance sensor to J8 to get a realistic analog signal   
  Timer4A_Init(&DAStask,80000000/10,1); // 10 Hz sampling, priority=1
  OS_ClearMsTime();    // start a periodic interrupt to maintain time
  EnableInterrupts();  
    
  Interpreter();     // finally, launch interpreter, should never return
} 

