// OPT3101TestMain.c
// Runs on LM4F120/TM4C123
// Test the OPT3101 functions provided connected to EE445M robot
// Daniel and Jonathan Valvano
// Jan 12, 2020

/* This example accompanies the books
   "Embedded Systems: Introduction to ARM Cortex M Microcontrollers",
      ISBN: 978-1469998749, Jonathan Valvano, copyright (c) 2020
   "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
      ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020
   "Embedded Systems: Real-Time Operating Systems for ARM Cortex-M Microcontrollers",
      ISBN: 978-1466468863, Jonathan Valvano, copyright (c) 2020

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


// EE445M robot hardware connections
// edited by Valvano and Valvano 1/3/2020
// OPT3101 hardware
// GND    ground
// VIN    3.3V
// SDA    OPT3101 pin 14 <> PB3 I2C data SDA_S
// SCL    OPT3101 pin 13 <- PB2 I2C clock SCL_S
// GP1    OPT3101 pin 11 -> PC4 input from the DATA_RDY
// GP2    OPT3101 pin 12 ->  Not used
// RST_MS OPT3101 pin 17 <- PC5 output low to reset the OPT3101
/*
 *  I2C0 Conncection | I2C1 Conncection | I2C2 Conncection | I2C3 Conncection
 *  ---------------- | ---------------- | ---------------- | ----------------
 *  SCL -------- PB2 | SCL -------- PA6 | SCL -------- PE4 | SCL -------- PD0
 *  SDA -------- PB3 | SDA -------- PA7 | SDA -------- PE5 | SDA -------- PD1
 */
// **********ST7735 TFT and SDC*******************
// ST7735
// Backlight (pin 10) connected to +3.3 V
// MISO (pin 9) unconnected
// SCK (pin 8) connected to PA2 (SSI0Clk)
// MOSI (pin 7) connected to PA5 (SSI0Tx)
// TFT_CS (pin 6) connected to PA3 (SSI0Fss)
// CARD_CS (pin 5) connected to PB0
// Data/Command (pin 4) connected to PA6 (GPIO), high for data, low for command
// RESET (pin 3) connected to PA7 (GPIO)
// VCC (pin 2) connected to +3.3 V
// Gnd (pin 1) connected to ground

// HC-SR04 Ultrasonic Range Finder 
// J9X  Trigger0 to PB7 output (10us pulse)
// J9X  Echo0    to PB6 T0CCP0
// J10X Trigger1 to PB5 output (10us pulse)
// J10X Echo1    to PB4 T1CCP0
// J11X Trigger2 to PB3 output (10us pulse) ***used by OPT3101***
// J11X Echo2    to PB2 T3CCP0              ***used by OPT3101***
// J12X Trigger3 to PC5 output (10us pulse) ***used by OPT3101***
// J12X Echo3    to PF4 T2CCP0

// Ping))) Ultrasonic Range Finder 
// J9Y  Trigger/Echo0 to PB6 T0CCP0
// J10Y Trigger/Echo1 to PB4 T1CCP0
// J11Y Trigger/Echo2 to PB2 T3CCP0   ***used by OPT3101***
// J12Y Trigger/Echo3 to PF4 T2CCP0

// IR distance sensors
// J5/A3/PE3
// J6/A2/PE2
// J7/A1/PE1
// J8/A0/PE0   
#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/I2CB1.h"
#include "../inc/PLL.h"
#include "../inc/ST7735.h"
#include "../inc/CortexM.h"
#include "../inc/LPF.h"
#include "../inc/OPT3101.h"
#include "../inc/LaunchPad.h"

uint32_t TxChannel; // this is the one that was sampled
uint32_t Distances[3];
uint32_t FilteredDistances[3];
uint32_t Amplitudes[3];
uint32_t StartTime;
uint32_t Time;
uint32_t TimeToConvert;      // in usec

// SysTick is just for debug profile, it can be removed
// OPT3101_Init(0);  didn't work
// OPT3101_Init(1); averaging=2,   time to sample=   4.02ms
// OPT3101_Init(2); averaging=4,   time to sample=   7.04ms
// OPT3101_Init(3); averaging=8,   time to sample=   6.03ms
// OPT3101_Init(4); averaging=16,  time to sample=   8.05ms
// OPT3101_Init(5); averaging=32,  time to sample=   8.05ms
// OPT3101_Init(6); averaging=64,  time to sample=  16.1ms
// OPT3101_Init(7); averaging=128, time to sample=  32.3ms
// OPT3101_Init(8); averaging=256, time to sample=  64.4ms
// OPT3101_Init(9); averaging=512, time to sample= 128.8ms
int main(void){ // interrupt on completion, but continuous sampling as fast as possible
  uint32_t time=0;
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  NVIC_ST_RELOAD_R = 0x00FFFFFF;           // maximum reload value
  NVIC_ST_CTRL_R = 0x00000005;           // enable SysTick with no interrupts
  I2C0_Init(400000,80000000); // baud rate = 400kHz (bus=80MHz)
  ST7735_InitR(INITR_REDTAB);
  ST7735_FillScreen(ST7735_BLACK);
  ST7735_SetTextColor(ST7735_WHITE);
  ST7735_SetCursor(0, 0);
  ST7735_OutString("OPT3101");
  ST7735_SetTextColor(ST7735_YELLOW);
  ST7735_SetCursor(0, 1);
  ST7735_OutString("Left =");
  ST7735_SetCursor(0, 2);
  ST7735_OutString("Centr=");
  ST7735_SetCursor(0, 3);
  ST7735_OutString("Right=");
  ST7735_SetCursor(0, 4);
  ST7735_SetTextColor(ST7735_WHITE);
  ST7735_OutString("Time="); ST7735_SetCursor(6, 4);  ST7735_OutUDec5(0); ST7735_OutString(" us"); 
  ST7735_SetCursor(0, 5);
  ST7735_SetTextColor(ST7735_WHITE);
  ST7735_OutString("Interrupts");
  ST7735_SetTextColor(ST7735_YELLOW);
  OPT3101_Init(5);
  OPT3101_Setup();
  OPT3101_CalibrateInternalCrosstalk();
  OPT3101_ArmInterrupts(&TxChannel, Distances, Amplitudes);
  StartTime = NVIC_ST_CURRENT_R;
  TxChannel = 3;
  OPT3101_StartMeasurementChannel(1);
  LPF_Init5(100,16);
  LPF_Init6(100,16);
  LPF_Init7(100,16);
  EnableInterrupts();
  while(1){
    if(TxChannel <= 2){ // 0,1,2 means new data
      TimeToConvert = ((StartTime-NVIC_ST_CURRENT_R)&0x00FFFFFF)/80; // usec
      StartTime = NVIC_ST_CURRENT_R;
      if(TxChannel==0){
        FilteredDistances[0] = LPF_Calc5(Distances[0]);
      }else if(TxChannel==1){
        FilteredDistances[1] = LPF_Calc6(Distances[1]);
      }else {
        FilteredDistances[2] = LPF_Calc7(Distances[2]);
      }
			if((time&0x0F)==0){  // output every 16th sample (16*8ms=128ms)
        ST7735_SetCursor(6, TxChannel+1);
        ST7735_OutUDec4(FilteredDistances[TxChannel]);
			}
      TxChannel = 3; // 3 means no data
    }
    time++;
    if((time&0x7f)==0){ // show this every 128th sample (128*8=1024us)
      ST7735_SetCursor(6, 4);  ST7735_OutUDec5(TimeToConvert);
      ST7735_SetCursor(13, 1); ST7735_OutUDec4(Noise5());
      ST7735_SetCursor(13, 2); ST7735_OutUDec4(Noise6());
      ST7735_SetCursor(13, 3); ST7735_OutUDec4(Noise7());
    }
    WaitForInterrupt();
  }
}

bool pollDistanceSensor(void){
  if(OPT3101_CheckDistanceSensor()){
    TxChannel = OPT3101_GetMeasurement(Distances,Amplitudes);
    return true;
  }
  return false;
}
int main2(void){ // busy-wait implementation
  uint32_t channel = 1;
  PLL_Init(Bus80MHz);
  NVIC_ST_RELOAD_R = 0x00FFFFFF;  // maximum reload value
  NVIC_ST_CTRL_R = 0x00000005;    // enable SysTick with no interrupts
  I2C0_Init(400000,80000000);     // baud rate = 400kHz (bus=80MHz)
  ST7735_InitR(INITR_REDTAB);
  ST7735_SetTextColor(ST7735_WHITE);
  ST7735_FillScreen(ST7735_BLACK);
  ST7735_SetCursor(0, 0);
  ST7735_OutString("OPT3101");
  ST7735_SetTextColor(ST7735_YELLOW);
  ST7735_SetCursor(0, 1);
  ST7735_OutString("Left =");
  ST7735_SetCursor(0, 2);
  ST7735_OutString("Centr=");
  ST7735_SetCursor(0, 3);
  ST7735_OutString("Right=");
  ST7735_SetCursor(0, 4);
  ST7735_SetTextColor(ST7735_WHITE);
  ST7735_OutString("Busy-wait");
  ST7735_SetTextColor(ST7735_YELLOW);
  OPT3101_Init(5);
  OPT3101_Setup();
  OPT3101_CalibrateInternalCrosstalk();
  OPT3101_StartMeasurementChannel(channel);
  StartTime = NVIC_ST_CURRENT_R;
  while(1){
    if(pollDistanceSensor()){
      TimeToConvert = ((StartTime-NVIC_ST_CURRENT_R)&0x00FFFFFF)/80000; // msec
      if(TxChannel <= 2){
        ST7735_SetCursor(6, TxChannel+1);
        ST7735_OutUDec4(Distances[TxChannel]);
      }
      channel = (channel+1)%3;
      OPT3101_StartMeasurementChannel(channel);
      StartTime = NVIC_ST_CURRENT_R;
    }
  }
}
