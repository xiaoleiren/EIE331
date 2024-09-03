// SensorBoardTestMain.c
// Runs on LM4F120/TM4C123 with version 3 of EE445M sensor board
// Test the EE445M robot sensors 
// - IR distance sensors
// - Ultrasonic distance sensors
// - OPT3101 time of flight distance sensors
// Daniel Valvano, Jonathan Valvano
// January 15, 2020 

/* This example accompanies the books
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

// Sensor Board test procedure:
// 0) Set the OPT3101 compiler flag to 1 if using the OPT3101 (set OPT3101 compiler flag to 0 if not using)
// 1) Connect the LaunchPad to the PC using the USB cable.  Open, build (compile), and download SensorBoardTest.uvproj in uVision4. 
// 2) Disconnect the LaunchPad's USB cable from the PC.
// 3) If the Sensor Board power (J13) is still connected to the Motor Board power, do one of the following:
//      a) Remove JP1 to power the Sensor Board from the PC.  Connect the LaunchPad to the Sensor Board.
//      b) Insert JP1 to power the Sensor Board from the Motor Board's power.  Be sure that the Motor Board is off, and then connect the LaunchPad to the Sensor Board.  The LaunchPad's USB cable can be removed.
// 4) Connect the ST7735 LCD to the Sensor Board.
// 5) Connect all necessary sensors to the Sensor Board.  There is nothing stopping you from connecting the ultrasonic sensors backwards or off-by-one.  Be sure to match the ground wire with the "G" label on the Sensor Board.  Also be sure to match the same number of wires in the plug as in the socket.  The 3-wire and 4-wire connectors are different.
//      NOTE: Only 3 of the 4 ultrasonic sensors may be used.  J12X and J12Y share PF4 with a built-in switch on the LaunchPad.
//      NOTE: If using the OPT3101 distance sensor, you can not use ultrasonics on J11 or J12
// 6) Power up the Sensor Board by doing one of the following:
//      a) Re-connect the LaunchPad's USB cable to the PC.
//      b) Turn on the power to the Motor Board.  Depending on how the rest of the robot is configured, the wheels may spin, so hold it or prop it up so it does not get away.
// 7) Follow the onscreen instructions.  Press SW1 if using 4-pin HC-SR04 ultrasonic sensors or press SW2 if using 3-pin Ping))) ultrasonic sensors.
// 8) Manipulate the sensors and verify that the displayed numbers change.  The numbers should also be steady when stationary.  Remember that the sensors may have a "blind spot" at extremely close range.

// hardware connections
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
// J12X Echo3    to PF4 T2CCP0 (not connected, no software for this)

// Ping))) Ultrasonic Range Finder 
// J9Y  Trigger/Echo0 to PB6 T0CCP0
// J10Y Trigger/Echo1 to PB4 T1CCP0
// J11Y Trigger/Echo2 to PB2 T3CCP0   ***used by OPT3101***
// J12Y Trigger/Echo3 to PF4 T2CCP0 (not connected, no software for this)

// IR distance sensors
// J5/A3/PE3 analog channel 0  
// J6/A2/PE2 analog channel 1 
// J7/A1/PE1 analog channel 2
// J8/A0/PE0 analog channel 3  

// OPT3101 hardware
// GND    ground
// VIN    3.3V
// SDA    OPT3101 pin 14 <> PB3 I2C data SDA_S
// SCL    OPT3101 pin 13 <- PB2 I2C clock SCL_S
// GP1    OPT3101 pin 11 -> PC4 input from the DATA_RDY
// GP2    OPT3101 pin 12 ->  Not used
// RST_MS OPT3101 pin 17 <- PC5 output low to reset the OPT3101
#define OPT3101 0
// 0 means no OPT3101, can connect ultrasound to J11 
// 1 means Connect OPT3101, do not connect ultrasound to J11 or J12

#include <stdio.h>
#include <stdint.h>
#include "../inc/ST7735.h"
#include "../inc/PLL.h"
#include "../inc/Timer.h"
#include "../inc/LPF.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/ADCSWTrigger.h"
#include "../inc/tm4c123gh6pm.h"
#include "../inc/IRDistance.h"
#if OPT3101
#include "../inc/I2CB1.h"
#include "../inc/OPT3101.h"
uint32_t TxChannel; // this is the one that was sampled
uint32_t Distances[3];
uint32_t FilteredDistances[3];
uint32_t Amplitudes[3];
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
#endif

uint32_t PingType,IRdata[4],FIRdata[4];
uint32_t Cycle0,Cycle1,Cycle3,FCycle0,FCycle1,FCycle3;
int main(void){ int i;   // sensor board test main
  uint32_t time=0;  // in ms about
  PLL_Init(Bus80MHz);    // set system clock to 80 MHz
  LaunchPad_Init();      // switches LEDS on LaunchPad
  Timer0_Init();   // ultrasonic on J9
  Timer1_Init();   // ultrasonic on J10
#if OPT3101
  I2C0_Init(400000,80000000); // baud rate = 400kHz (bus=80MHz)
  OPT3101_Init(5); // 32 point averaging, 8ms conversion
  OPT3101_Setup();
  OPT3101_CalibrateInternalCrosstalk();
  OPT3101_ArmInterrupts(&TxChannel, Distances, Amplitudes);
#else
  Timer3_Init();   // ultrasonic on J11
#endif
  ST7735_InitR(INITR_REDTAB);
  ST7735_DrawString(0,0,"Sensor Board Test",ST7735_YELLOW);
  ST7735_DrawString(0,1,"IR on pin PE3-0",ST7735_YELLOW);
  ST7735_DrawString(0,2,"Which ultrasonic?",ST7735_WHITE);
  ST7735_DrawString(0,3,"SW1 4-pin HCSR04",ST7735_WHITE);
  ST7735_DrawString(0,4,"SW2 3-pin Ping)))",ST7735_WHITE);
#if OPT3101
  ST7735_DrawString(0,5,"Connect OPT3101",ST7735_YELLOW);
  ST7735_DrawString(0,6,"No J11 J12",ST7735_YELLOW);
#endif

  while(((LaunchPad_Input()&SW2)==0)&&((LaunchPad_Input()&SW1)==0)){ // advance when SW1 or SW2 pressed
    Clock_Delay1ms(10);
  }
  if(LaunchPad_Input()&SW1){
    PingType = 0;
    ST7735_DrawString(0,2,"Use 4-pin HCSR04   ",ST7735_WHITE);
  }else{
    PingType = 1;
    ST7735_DrawString(0,2,"Use 3-pin Ping)))  ",ST7735_WHITE);
  }
  while(LaunchPad_Input()){ // wait for release
    Clock_Delay1ms(10);
  }

  ADC_Init3210();

  ST7735_DrawString(0, 3,"J5/A3/PE3=       mm",ST7735_WHITE);
  ST7735_DrawString(0, 4,"J6/A2/PE2=       mm",ST7735_WHITE);
  ST7735_DrawString(0, 5,"J7/A1/PE1=       mm",ST7735_WHITE);
  ST7735_DrawString(0, 6,"J8/A0/PE0=       mm",ST7735_WHITE);
  ST7735_DrawString(0, 9,"J9 /Ping0=       mm",ST7735_WHITE);
  ST7735_DrawString(0,10,"J10/Ping1=       mm",ST7735_WHITE);
#if OPT3101
  ST7735_DrawString(0,13," Left    =       mm",ST7735_WHITE);
  ST7735_DrawString(0,14," Center  =       mm",ST7735_WHITE);
  ST7735_DrawString(0,15," Right   =       mm",ST7735_WHITE);
#else
  ST7735_DrawString(0,11,"J11/Ping2=       mm",ST7735_WHITE);
#endif
  ADC_In3210(IRdata);
  LPF_Init(IRdata[0],4);  // prime 4 deep averaging LPF
  LPF_Init2(IRdata[1],4);
  LPF_Init3(IRdata[2],4);
  LPF_Init4(IRdata[3],4);
#if OPT3101
  TxChannel = 3;
  OPT3101_StartMeasurementChannel(1);
  LPF_Init5(100,16); // prime with 100mm
  LPF_Init6(100,16);
  LPF_Init7(100,16);
#else
  LPF_Init5(47058,4); // prime with 100mm
  LPF_Init6(47058,4);
  LPF_Init7(47058,4);
#endif
  EnableInterrupts();
  while(1){
    Clock_Delay1ms(1);
    time++; // approximately 1ms
#if OPT3101
    if(TxChannel <= 2){ // 0,1,2 means new data
      if(TxChannel==0){
        FilteredDistances[0] = LPF_Calc5(Distances[0]);
      }else if(TxChannel==1){
        FilteredDistances[1] = LPF_Calc6(Distances[1]);
      }else {
        FilteredDistances[2] = LPF_Calc7(Distances[2]);
      }
      TxChannel = 3; // 3 means no data
    }
#endif
		if((time&0x7F)==0){  // output every 128th loop (128ms)
      if(PingType){
        Timer0_StartPing();
        Timer1_StartPing();
#if OPT3101
#else
        Timer3_StartPing();
#endif
      }else{
        Timer0_StartHCSR04();
        Timer1_StartHCSR04();
#if OPT3101
#else
        Timer3_StartHCSR04();
#endif
      }
      ADC_In3210(IRdata);
      FIRdata[0] = LPF_Calc(IRdata[0]);   // 4 deep averaging LPF
      FIRdata[1] = LPF_Calc2(IRdata[1]);  
      FIRdata[2] = LPF_Calc3(IRdata[2]);  
      FIRdata[3] = LPF_Calc4(IRdata[3]);  

      for(i=0;i<4;i++){
        ST7735_SetCursor(11,i+3); 
        ST7735_OutUDec4(IRDistance_Convert(FIRdata[i],i));
        ST7735_OutString("  ");
      }
#if OPT3101
      ST7735_SetCursor(11,9); 
      Cycle0 = Timer0_Read();
      if(Cycle0){
        ST7735_OutUDec5(Cycles2millimeter(Cycle0)); // no filter
      }
      ST7735_SetCursor(11,10); 
      Cycle1 = Timer1_Read();
      if(Cycle1){
        ST7735_OutUDec5(Cycles2millimeter(Cycle1)); 
      }
      ST7735_SetCursor(11,13); ST7735_OutUDec4(FilteredDistances[0]);
      ST7735_SetCursor(11,14); ST7735_OutUDec4(FilteredDistances[1]);
      ST7735_SetCursor(11,15); ST7735_OutUDec4(FilteredDistances[2]);
#else
      ST7735_SetCursor(11,9); 
      Cycle0 = Timer0_Read();
      if(Cycle0){
        FCycle0 = LPF_Calc5(Cycle0); // 4 deep averaging LPF
        ST7735_OutUDec5(Cycles2millimeter(FCycle0)); 
      }
      ST7735_SetCursor(11,10); 
      Cycle1 = Timer1_Read();
      if(Cycle1){
        FCycle1 = LPF_Calc6(Cycle1); // 4 deep averaging LPF
        ST7735_OutUDec5(Cycles2millimeter(FCycle1)); 
      }
      ST7735_SetCursor(11,11); 
      Cycle3 = Timer3_Read();
      if(Cycle3){
        FCycle3 = LPF_Calc7(Cycle3); // 4 deep averaging LPF
        ST7735_OutUDec5(Cycles2millimeter(FCycle3)); 
      }
#endif
    }
  }
}



