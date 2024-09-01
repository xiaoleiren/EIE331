/*!
 * @file  VL53L0X_Distance_Measure_ST7735.c
 * @brief
 * ----------
 * Adapted code from Adafruit VL53L0X driver for Arduino.
 * You can find the Adafruit VL53L0X driver here:
 * ----------
 *
 * ----------
 * For future development and updates, please follow this repository:
 * ----------
 * If you find any bug or problem, please create new issue or a pull request with a fix in the repository.
 * Or you can simply email me about the problem or bug at zeelivermorium@gmail.com
 * Much Appreciated!
 * ----------
 * @author Zee Livermorium
 * @date   Aug 5, 2018
 */
 
 // EE445M robot hardware
 // *********remove ultrasound from J11X and J11Y*******
 // 3.3V to Vin
 // ground to ground
 // SDA to PB3
 // SCA to PB2
 // other VL53L0X pins not connected

#include <stdint.h>
#include "PLL.h"
#include "ST7735.h"
#include "VL53L0X.h"
#include "tm4c123gh6pm.h"

#define NVIC_ST_CTRL_COUNT      0x00010000  // Count flag
#define NVIC_ST_CTRL_CLK_SRC    0x00000004  // Clock Source
#define NVIC_ST_CTRL_INTEN      0x00000002  // Interrupt enable
#define NVIC_ST_CTRL_ENABLE     0x00000001  // Counter mode
#define NVIC_ST_RELOAD_M        0x00FFFFFF  // Counter load value

// Initialize SysTick with busy wait running at bus clock.
void SysTick_Init(void){
  NVIC_ST_CTRL_R = 0;                   // disable SysTick during setup
  NVIC_ST_RELOAD_R = NVIC_ST_RELOAD_M;  // maximum reload value
  NVIC_ST_CURRENT_R = 0;                // any write to current clears it
                                        // enable SysTick with core clock
  NVIC_ST_CTRL_R = NVIC_ST_CTRL_ENABLE+NVIC_ST_CTRL_CLK_SRC;
}
uint32_t start;
uint32_t end;
uint32_t time;
uint32_t offset;
int main(void) {
    /*-- TM4C123 Init --*/
    PLL_Init(Bus80MHz);                             // bus clock at 80 MHz
    SysTick_Init();
	  start = NVIC_ST_CURRENT_R;
  	end = NVIC_ST_CURRENT_R;
	  offset = (start-end)&0x00FFFFFF;
    /*-- ST7735 Init --*/
    ST7735_InitR(INITR_REDTAB);
    
    ST7735_SetCursor(0, 0);
    ST7735_FillScreen(ST7735_BLACK);
    
    ST7735_OutString("@author: Zee Lv");
    ST7735_OutChar('\n');
    ST7735_OutString("--------------------");
    ST7735_OutChar('\n');
    
    /*-- VL53L0X Init --*/
    if(!VL53L0X_Init(VL53L0X_I2C_ADDR)) {
        ST7735_OutString("Fail to initialize VL53L0X :(");
        delay(1);
        return 0;
    } else {
        ST7735_OutString("VL53L0X Ready~ ");
        ST7735_OutChar('\n');
    }
    
    VL53L0X_RangingMeasurementData_t measurement;
    
    /*-- loop --*/
    while(1) {
	      start = NVIC_ST_CURRENT_R;
        VL53L0X_getSingleRangingMeasurement(&measurement);
  	    end = NVIC_ST_CURRENT_R;
	      time = ((start-end)&0x00FFFFFF-offset)/80000;
        if (measurement.RangeStatus != 4) {
            ST7735_OutString("Distance: ");
            ST7735_OutUDec(measurement.RangeMilliMeter);
            ST7735_OutString(" mm  ");
            ST7735_OutChar('\n');
					  ST7735_OutString("time: ");
            ST7735_OutUDec(time);
            ST7735_OutString(" ms");
            ST7735_OutChar('\n');
        } else {
            ST7735_OutString("Out of range :( ");
            ST7735_OutChar('\n');
        }
        delay(1000);                                // take a break
        ST7735_SetCursor(0, 3);
    }
}
