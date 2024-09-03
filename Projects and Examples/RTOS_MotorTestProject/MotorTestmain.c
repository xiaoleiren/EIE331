// MotorTestmain.c
// Runs on TM4C123
// Test project for motor board
// 
// ***************************************************
// ************remove R9 and R10**********************
// ***************************************************

// Version 6 hardware (use program main)
// to go forward on right motor
// PB7 A+  regular GPIO level high (1)
// PB6 A-  PWM 100 Hz, PWM negative logic (e.g., 10% duty cycle is 90% power)
// to go backward on right motor
// PB7 A+  PWM 100 Hz, PWM negative logic (e.g., 10% duty cycle is 90% power)
// PB6 A-  regular GPIO level high (1)
// coast on right motor (fast decay)
// PB7 A+  regular GPIO level low (0)
// PB6 A-  regular GPIO level low (0)
// to go forward on left motor
// PB5 B+  PWM 100 Hz, PWM negative logic (e.g., 10% duty cycle is 90% power)
// PB4 B-  regular GPIO level high (1) 
// to go backward on left motor
// PB5 B+  regular GPIO level high (1)
// PB4 B-  PWM 100 Hz, PWM negative logic (e.g., 10% duty cycle is 90% power)
// coast on left motor (fast decay)
// PB5 B+  regular GPIO level low (0)
// PB4 B-  regular GPIO level low (0)

// Version 5 hardware (use program main5)
// PB7 A+  PWM 100 Hz, right motor, PWM positive logic
// PB6 A-  regular GPIO, right motor, 0 means forward
// PB5 B+  PWM 100 Hz, left motor, PWM negative logic
// PB4 B-  regular GPIO, left motor, 1 means forward
// PD0 is servo A, 20ms period, pulse time 0.5 to 2.5ms
// PD1 is servo B (not used), 20ms period, pulse time 0.5 to 2.5ms
// Servo period = 20ms = 25000 PWM clocks (1.25MHz PWM)
//   min pulse  = 0.5ms = 625 PWM clocks
//   mid pulse  = 1.5ms = 1875 PWM clocks
//   max pulse  = 2.5ms = 3125 PWM clocks
//   because of rack-pinion restrict to 1250 to 2375
// Use PWM0/PB6 and PWM1/PB7 to generate pulse-width modulated outputs.
// Daniel Valvano
// Jan 2, 2020

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020
   Program 6.8, section 6.3.2

   "Embedded Systems: Real-Time Operating Systems for ARM Cortex M Microcontrollers",
   ISBN: 978-1466468863, Jonathan Valvano, copyright (c) 2020
   Program 8.4, Section 8.3

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
#include "../inc/PLL.h"
#include "../inc/CortexM.h"
#include "../inc/PWMrobot.h"
#include "../inc/LaunchPad.h"


#define SERVOMAX 2375
#define SERVOMID 1875
#define SERVOMIN 1275
#define SERVODELTA 100
// SW2 cycles through 12 positions
// mode=0 1875,...,1275
// mode=1 1870,...,2375
uint32_t Steering;     // 625 to 3125
uint32_t SteeringMode; // 0 for increase, 1 for decrease
#define PERIOD10MS 12500  // 800ns units
#define POWERMIN 5
#define POWERMAX (PERIOD10MS-100)
#define POWERDELTA 2000
uint32_t Power;


// SW1 cycles through seven speeds 400,2400,4400,6400,8400,10400,12400
int main1(void){ // version 6 with DRV8848
  int direction = 0;   // forward
  PLL_Init(Bus80MHz);  // bus clock at 80 MHz
  LaunchPad_Init();
  Power = POWERMIN;
  Steering = SERVOMID;  // 20ms period 1.5ms pulse
  SteeringMode = 0;
  Servo_Init(25000, Steering);   
  DRV8848_LeftInit(PERIOD10MS, Power, COAST);
  DRV8848_RightInit(PERIOD10MS, Power, COAST);
  while(1){
    LaunchPad_WaitForTouch(); // wait for either SW1 or SW2
    if(PF0==0){
      if(SteeringMode){
        if(Steering >= SERVOMIN+SERVODELTA){
          Steering = Steering - SERVODELTA;
        }else{
          Steering = SERVOMID; // go to center and
          SteeringMode = 0;    // switch direction
        }
      }else{
        Steering = Steering + SERVODELTA;
        if(Steering > SERVOMAX){
          Steering = SERVOMID; // go to center and
          SteeringMode = 1;    // switch direction
        }
      }
      Servo_Duty(Steering);    // SERVOMIN to SERVOMAX
      PF1 ^= 0x02;
    }
    if((PF0==0x01)&&(PF4==0)){
      Power = Power + POWERDELTA;
      if(Power > POWERMAX){
        Power = POWERMIN;      // go back to minimum
      }
      PF2 ^= 0x04;
      if(Power == POWERMIN){
        DRV8848_LeftStop();
        DRV8848_RightStop();}
      else if(Power == (POWERMIN+POWERDELTA)){
        if(direction){
          DRV8848_LeftInit(PERIOD10MS, Power, BACKWARD);
          DRV8848_RightInit(PERIOD10MS, Power, BACKWARD);
          direction = 0;          
        }else{
          DRV8848_LeftInit(PERIOD10MS, Power, FORWARD);
          DRV8848_RightInit(PERIOD10MS, Power, FORWARD); 
          direction = 1;          
        }
      }else{
        DRV8848_LeftDuty(Power);   // 400 to 12400 (positive logic)
        DRV8848_RightDuty(Power);  // 400 to 12400 (negative logic)
      }
    }
    LaunchPad_WaitForRelease();
  }
}
int main(void){ // use this with motor board version 5
  PLL_Init(Bus80MHz);  // bus clock at 80 MHz
  LaunchPad_Init();
  Power = 5;
  Steering = SERVOMID;  // 20ms period 1.5ms pulse
  SteeringMode = 0;
  Servo_Init(25000, Steering);   
  Left_Init(12500, Power, 0);          // left wheel low power, forward, initialize PWM0, 100 Hz
  Right_Init(12500, 12500-Power, 1);   // right wheel low power, forward, initialize PWM0, 100 Hz

  Power = POWERMIN;     // PWMclock at 1.25MHz
  while(1){
    LaunchPad_WaitForTouch();  // wait while both switches not touched
    if(PF0==0){
      if(SteeringMode){
        if(Steering >= SERVOMIN+SERVODELTA){
          Steering = Steering - SERVODELTA;
        }else{
          Steering = SERVOMID; // go to center and
          SteeringMode = 0;    // switch direction
        }
      }else{
        Steering = Steering + SERVODELTA;
        if(Steering > SERVOMAX){
          Steering = SERVOMID; // go to center and
          SteeringMode = 1;    // switch direction
        }
      }
      Servo_Duty(Steering);    // SERVOMIN to SERVOMAX
      PF1 ^= 0x02;
    }
    if((PF0==0x01)&&(PF4==0)){
      Power = Power + POWERDELTA;
      if(Power > POWERMAX){
        Power = POWERMIN;      // go back to minimum
      }
      PF2 ^= 0x04;
      Left_Duty(Power,0);       // 400 to 12400 (positive logic)
      Right_Duty(12500-Power,1); // 12400 to 400 (negative logic)
    }
    LaunchPad_WaitForRelease();
  }
}






