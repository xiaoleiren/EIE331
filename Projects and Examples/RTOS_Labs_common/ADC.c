// *************ADC.c**************
// EE445M/EE380L.6 Labs 1, 2, Lab 3, and Lab 4 
// mid-level ADC functions
// you are allowed to call functions in the low level ADCSWTrigger driver
// 
// Runs on LM4F120/TM4C123
// Jonathan W. Valvano Jan 5, 2020, valvano@mail.utexas.edu
#include <stdint.h>
#include "../inc/ADCSWTrigger.h"

// channelNum (0 to 11) specifies which pin is sampled with sequencer 3
// software start
// return with error 1, if channelNum>11, 
// otherwise initialize ADC and return 0 (success)
int ADC_Init(uint32_t channelNum){
// put your Lab 1 code here
	
  return 0;
}
// software start sequencer 3 and return 12 bit ADC result
uint32_t ADC_In(void){
// put your Lab 1 code here

  return 1;
}
