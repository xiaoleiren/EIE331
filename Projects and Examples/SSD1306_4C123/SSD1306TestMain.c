// SSD1306TestMain.c
// Runs on TM4C123
// Test the functions in SSD1306.c by printing basic
// Jonathan Valvano
// Jan 2, 2021

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020

 Copyright 2021 by Jonathan W. Valvano, valvano@mail.utexas.edu
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

// Typo on OLED has a 0-ohm resistor selection 
// that says        "IIC ADDRESS SELECT 0x78 0x7A"
// should have said "IIC ADDRESS SELECT 0x3C 0x3D"
// search for I2C SSD1306 on Amazon.com
// https://www.amazon.com/gp/product/B0871KW7BD
// See SSD1306.h file if I2C is 0 then
// VCC   3.3V power to OLED
// GND   ground
// SCL   PB2 I2C clock
// SDA   PB3 I2C data

// If I2C is 3 then
// VCC   3.3V power to OLED
// GND   ground
// SCL   PD0 I2C clock
// SDA   PD1 I2C data
#include <stdio.h>
#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "../inc/PLL.h"
#include "../inc/SSD1306.h"
#include "../inc/CortexM.h"
#include "../inc/LaunchPad.h"
#include "../inc/SysTick.h"
#include "../inc/Timer2A.h"
#include "Image.h"
#define CR   0x0D

/**
 * main.c
 */
int main0(void){ uint32_t data=0; int32_t sdat=-200;
  uint8_t letter=0x20;
  int i, j, count;
  PLL_Init(Bus80MHz);                   // set system clock to 80 MHz
  SSD1306_Init(SSD1306_SWITCHCAPVCC);
  
  SSD1306_ClearBuffer();
  SSD1306_DrawBMP(0,60,logo,14,SSD1306_WHITE);
  SSD1306_OutBuffer();
  Clock_Delay1ms(1000);
    
  SSD1306_ClearBuffer();
  SSD1306_DrawBMP(0,63,cal,14,SSD1306_WHITE);
  SSD1306_OutBuffer();
  Clock_Delay1ms(1000);
  
  SSD1306_ClearBuffer();
  SSD1306_DrawString(0, 0,"----- EE319K --------",SSD1306_WHITE);
  SSD1306_DrawString(0,16,"123456789012345678901",SSD1306_WHITE);
  SSD1306_DrawString(0,24,"abcdefghijklmnopqrstu",SSD1306_WHITE);
  SSD1306_DrawString(0,32,"ABCDEFGHIJKLMNOPQRSTU",SSD1306_WHITE);
  SSD1306_DrawString(0,40,"!@#$%^&*()_+-=",SSD1306_WHITE);
  SSD1306_DrawString(0,48,"123456789012345678901",SSD1306_WHITE);
  SSD1306_DrawString(0,56,"vwxyz,./<>?;'\"[]\\{}|",SSD1306_WHITE);
  SSD1306_OutBuffer();
  Clock_Delay1ms(1000);
  
  SSD1306_ClearBuffer();
  SSD1306_DrawFastHLine(0, 5,50,SSD1306_WHITE);
  SSD1306_DrawFastVLine(5,10,25,SSD1306_WHITE);
  SSD1306_OutBuffer();
  Clock_Delay1ms(1000);
  
  SSD1306_DrawFullImage(checker);
  Clock_Delay1ms(1000);

  for(count=0; count<21; count=count+1){
    SSD1306_ClearBuffer();
    for(i=0; i<3; i=i+1){
      for(j=0; j<5; j=j+1){
        // 16x10 enemy; 5 empty columns to left, 1 empty row below
        SSD1306_DrawBMP(5+21*j+count, 10+11*i, SmallEnemy, 0, SSD1306_WHITE);
      }
    }
    SSD1306_OutBuffer();
    Clock_Delay1ms(100);               // delay ~0.25 sec at 48 MHz
  }
  count = 0;
  do{
  // three step process: clear, build, display
    SSD1306_ClearBuffer();
    SSD1306_DrawBMP(count, 63, ti, 0, SSD1306_WHITE);
    SSD1306_OutBuffer();
    Clock_Delay1ms(10);    // delay ~0.01 sec 
    count = count + 1;
  }while(count < 80);
  do{
  // three step process: clear, build, display
    SSD1306_ClearBuffer();
    SSD1306_DrawBMP(count, 63, ti, 0, SSD1306_WHITE);
    SSD1306_OutBuffer();
    Clock_Delay1ms(10);    // delay ~0.01 sec 
    count = count - 1;
  }while(count > 0);
  do{
  // three step process: clear, build, display
    SSD1306_ClearBuffer();
    SSD1306_DrawBMP(count, 63, ti, 0, SSD1306_WHITE);
    SSD1306_OutBuffer();
    Clock_Delay1ms(10);    // delay ~0.01 sec
    count = count + 1;
  }while(count < 18);
  SSD1306_OutClear();

  while(1){
    SSD1306_SetCursor(0,0);
    SSD1306_OutString("data =");
    SSD1306_OutUDec(data);
    SSD1306_OutChar(CR);
    SSD1306_OutString("sdat =");
    SSD1306_OutSDec(sdat);
    SSD1306_OutChar(CR);
    SSD1306_OutString("fix1 =");
    SSD1306_OutUFix1(data);
    SSD1306_OutChar(CR);
    SSD1306_OutString("char =");
    SSD1306_OutUHex7(letter); SSD1306_OutString(" = ");SSD1306_OutChar(letter);
    Clock_Delay1ms(500);
    data = data+27;
    sdat = -1*(sdat+27);
    letter++; if(letter<0x20) letter=0x20;
  }
}

//*************TEST OF TIMING**************

uint32_t ClearTime;
uint32_t DisplayTime;
uint32_t PrintBMPTime;
uint32_t OutCharTime;
uint32_t OutDecTime;
uint32_t ClearBufferTime;
int main1(void){ 
  uint32_t start,offset,delay;
  PLL_Init(Bus80MHz);                   // set system clock to 80 MHz
  SSD1306_Init(SSD1306_SWITCHCAPVCC);
  SysTick_Init();
  start = NVIC_ST_CURRENT_R;
  offset = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;

  start = NVIC_ST_CURRENT_R;
  SSD1306_OutClear(); // erase screen
  delay = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  ClearTime = (delay-offset)/80; // us
  SSD1306_DrawString(0, 0,"----- EE319K --------",SSD1306_WHITE);
  SSD1306_DrawString(0,16,"123456789012345678901",SSD1306_WHITE);
  SSD1306_DrawString(0,24,"abcdefghijklmnopqrstu",SSD1306_WHITE);
  SSD1306_DrawString(0,32,"ABCDEFGHIJKLMNOPQRSTU",SSD1306_WHITE);
  SSD1306_DrawString(0,40,"!@#$%^&*()_+-=",SSD1306_WHITE);
  SSD1306_DrawString(0,48,"123456789012345678901",SSD1306_WHITE);
  SSD1306_DrawString(0,56,"vwxyz,./<>?;'\"[]\\{}|",SSD1306_WHITE);
  start = NVIC_ST_CURRENT_R;
  SSD1306_OutBuffer();
  delay = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  DisplayTime = (delay-offset)/80; // us
  SSD1306_OutClear();

  start = NVIC_ST_CURRENT_R;
  SSD1306_DrawBMP(26, 21, SmallEnemy, 0, SSD1306_WHITE);
  delay = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  PrintBMPTime = (delay-offset)/80; // us

  start = NVIC_ST_CURRENT_R;
  SSD1306_OutChar('V');
  delay = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  OutCharTime = (delay-offset)/80; // us
  
  start = NVIC_ST_CURRENT_R;
  SSD1306_OutUDec(12345);
  delay = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  OutDecTime = (delay-offset)/80; // us
	
  
  start = NVIC_ST_CURRENT_R;
  SSD1306_ClearBuffer();
  delay = (start-NVIC_ST_CURRENT_R)&0x00FFFFFF;
  ClearBufferTime = (delay-offset)/80; // us
  while(1){
		SSD1306_ClearBuffer();
		for(int j=11; j<60 ; j = j+10){
		SSD1306_DrawBMP(2, j, SmallEnemy, 0, SSD1306_WHITE);
		SSD1306_DrawBMP(22, j, SmallEnemy, 0, SSD1306_WHITE);
		SSD1306_DrawBMP(42, j, SmallEnemy, 0, SSD1306_WHITE);
		SSD1306_DrawBMP(62, j, SmallEnemy, 0, SSD1306_WHITE);
		SSD1306_DrawBMP(82, j, SmallEnemy, 0, SSD1306_WHITE);
		SSD1306_DrawBMP(102, j, SmallEnemy, 0, SSD1306_WHITE);
		}
		SSD1306_OutBuffer();
  }
}

//*************TEST OF LANGUAGE**************
typedef enum {English, Spanish, Portuguese, French} Language_t;
Language_t myLanguage;
typedef enum {HELLO, GOODBYE, LANGUAGE} phrase_t;
const char Hello_English[] ="Hello";
const char Hello_Spanish[] ="\xADHola!";
const char Hello_Portuguese[] = "Ol\xA0";
const char Hello_French[] ="All\x83";
const char Goodbye_English[]="Goodbye";
const char Goodbye_Spanish[]="Adi\xA2s";
const char Goodbye_Portuguese[] = "Tchau";
const char Goodbye_French[] = "Au revoir";
const char Language_English[]="English";
const char Language_Spanish[]="Espa\xA4ol";
const char Language_Portuguese[]="Portugu\x88s";
const char Language_French[]="Fran\x87" "ais";

const char *Phrases[3][4]={
  {Hello_English,Hello_Spanish,Hello_Portuguese,Hello_French},
  {Goodbye_English,Goodbye_Spanish,Goodbye_Portuguese,Goodbye_French},
  {Language_English,Language_Spanish,Language_Portuguese,Language_French}
};
//********SSD1306_OutPhrase*****************
// Print a string of characters to the SSD1306 LCD.
// Position determined by SSD1306_SetCursor command
// The string will not automatically wrap.
// inputs: Phrase type
// outputs: none
void SSD1306_OutPhrase(phrase_t message){
  const char *ptr = Phrases[message][myLanguage];
  while(*ptr){
    SSD1306_OutChar(*ptr);
    ptr = ptr + 1;
  }
}  
void SSD1306_LanguageTest(Language_t l){
  Language_t old = myLanguage;
  myLanguage = l;
  SSD1306_OutPhrase(LANGUAGE); SSD1306_OutChar(' ');
  SSD1306_OutPhrase(HELLO); SSD1306_OutChar(' ');
  SSD1306_OutPhrase(GOODBYE); SSD1306_OutChar(13);
  myLanguage = old;
}
void SSD1306_PhraseTest(phrase_t message){
  Language_t old = myLanguage;
  myLanguage = English;
  SSD1306_OutPhrase(LANGUAGE); SSD1306_OutChar(' ');
  SSD1306_OutPhrase(message); SSD1306_OutChar(13);
  myLanguage = Spanish;
  SSD1306_OutPhrase(LANGUAGE); SSD1306_OutChar(' ');
  SSD1306_OutPhrase(message); SSD1306_OutChar(13);
  myLanguage = Portuguese;
  SSD1306_OutPhrase(LANGUAGE); SSD1306_OutChar(' ');
  SSD1306_OutPhrase(message); SSD1306_OutChar(13);
  myLanguage = French;
  SSD1306_OutPhrase(LANGUAGE); SSD1306_OutChar(' ');
  SSD1306_OutPhrase(message); SSD1306_OutChar(13);
  myLanguage = old;
}  
void Pause(void){
  while(PF4){ Clock_Delay1ms(10);}
  while(PF4 == 0){ Clock_Delay1ms(10);}
}
// use this to see extended ASCII
int main2(void){uint8_t l; // main 2
  PLL_Init(Bus80MHz);                  // set system clock to 80 MHz
  LaunchPad_Init();
  SSD1306_Init(SSD1306_SWITCHCAPVCC);
  SSD1306_OutString("LanguageTest\n");
  for(phrase_t myPhrase=HELLO; myPhrase<= GOODBYE; myPhrase++){
    for(Language_t myL=English; myL<= French; myL++){
      SSD1306_OutString((char *)Phrases[LANGUAGE][myL]);SSD1306_OutChar(' ');
      SSD1306_OutString((char *)Phrases[myPhrase][myL]);SSD1306_OutChar(13);
    }
  }
  Pause();
  l = 128; // extended ASCII 128 to +255
  SSD1306_OutString("Extended ASCII\n");
  SSD1306_OutPhrase(HELLO);
  while(1){
    SSD1306_OutClear();
    for(int i=0;i<8;i++){
      SSD1306_SetCursor(0,i);
      SSD1306_OutUDec(l); 
      for(int j=0; j<4; j++){
       SSD1306_OutChar(' '); 
       SSD1306_OutChar(l+j); 
      }
      if(l == 252){
        l = 32;
      }else{
        l += 4;
      }
    }
    Pause();
  }  
}

//**CAN THIS DISPLAY SOLVE THE GAME?**************
typedef enum {dead,alive,sick,neederase} status_t;
#define MOVIESIZE 6
 struct sprite {
  int32_t x;      // x coordinate 0 and 127
  int32_t y;      // y coordinate 0 and 63
  int32_t vx,vy;   // pixels/50ms (20Hz)
  const uint8_t *image; // ptr->image
  status_t life;        // dead/alive
};          
typedef struct sprite sprite_t;
#define MAX 18
sprite_t Enemys[MAX];
void Init(void){ int i;
  for(i=0;i<5;i++){
    Enemys[i].x = 20*i+12;
    Enemys[i].y = 10;
    Enemys[i].image = SmallEnemy;
    Enemys[i].life = alive;
  }
  Enemys[0].vx = -2; Enemys[0].vy = 1;
  Enemys[1].vx = -1; Enemys[1].vy = 1;
  Enemys[2].vx = 0; Enemys[2].vy = 2;
  Enemys[3].vx = 1; Enemys[3].vy = 1;
  Enemys[4].vx = 2; Enemys[4].vy = 1;
  
  for(i=5;i<MAX;i++){
    Enemys[i].life = dead;
   }
}
int NeedToDraw;
struct sprite1 {
  int32_t x;      // x coordinate 0 and 127
  int32_t y;      // y coordinate 0 and 63
  const uint8_t *image; // ptr->image
  int32_t life;         // 0=dead, 1=alive
};          
typedef struct sprite1 sprite1_t;
sprite1_t Enemys1[4]; 
void Init1(void){ int i;
  for(i=0; i<4; i++){
    Enemys1[i].x = 20*i+12;
    Enemys1[i].y = 10;
    Enemys1[i].image = SmallEnemy;
    Enemys1[i].life = 1;
  }
  NeedToDraw = 1; // mark as changed and need to be redrawn
}
void Move1(void){ int i;
  for(i=0;i<4;i++){
    if(Enemys1[i].life){
      NeedToDraw = 1; // mark as changed and need to be redrawn
      if(Enemys1[i].y > 2){
        Enemys1[i].y += 2;   // move down
      }else{
        Enemys1[i].life = 0; // at bottom
      }
    }
  } 
}
void Draw1(void){ int i;
  if(NeedToDraw){
    SSD1306_ClearBuffer();
    for(i=0; i<4; i++){
      if(Enemys1[i].life){
        SSD1306_DrawBMP(Enemys1[i].x, Enemys1[i].y, 
          Enemys1[i].image, 0, SSD1306_INVERSE);
      }
    }
    SSD1306_OutBuffer();
    NeedToDraw = 0; // not needing to be redrawn
  }
}
void Move2(void){ int i;
  for(i=0; i<5; i++){
    if(Enemys[i].life == alive){ NeedToDraw = 1; // need to draw
      if((Enemys[i].y>62)||(Enemys[i].y<10)
       ||(Enemys[i].x<0) ||(Enemys[i].x>118)){
         Enemys[i].life = dead; // off screen
      }else{
        Enemys[i].x += Enemys[i].vx;
        Enemys[i].y += Enemys[i].vy;
      }
    }  
  } 
}

void SysTick_Handler(void){ // 30 Hz
  int i;
  for(i=0;i<MAX;i++){
    if(Enemys[i].life == alive){
      if(Enemys[i].y>62){
        Enemys[i].y = 61;
        Enemys[i].vy = -Enemys[i].vy; // bounce
      }else{
        if(Enemys[i].y < 10){ 
          Enemys[i].y = 10;
          Enemys[i].vy = -Enemys[i].vy; // bounce
      }else{
        if(Enemys[i].x < 0){ 
          Enemys[i].x = 1;
          Enemys[i].vx = -Enemys[i].vx; // bounce
      }else{
        if(Enemys[i].x > 118){
          Enemys[i].x = 117;
          Enemys[i].vx = -Enemys[i].vx; // bounce
        }else{
        Enemys[i].x += Enemys[i].vx;
        Enemys[i].y += Enemys[i].vy;
        }
      }
    }
      }
    }
  }
  NeedToDraw = 1; // need to draw
}

void Draw(void){ int i;
  SSD1306_ClearBuffer();
  for(i=0; i<MAX; i++){
    if(Enemys[i].life == alive){
      SSD1306_DrawBMP(Enemys[i].x, Enemys[i].y, 
         Enemys[i].image, 0, SSD1306_INVERSE);
    }
  }
  SSD1306_OutBuffer();
}
void SoundOut(void){
  static uint32_t data=0;
  LaunchPad_Output(data);
  data = (data+1)&0x07;
}
int main3(void){ 
  PLL_Init(Bus80MHz);                   // set system clock to 80 MHz
  LaunchPad_Init();
  SSD1306_Init(SSD1306_SWITCHCAPVCC);
  NVIC_ST_CTRL_R = 0;
  NVIC_ST_RELOAD_R = (80000000/20)-1; // 20 Hz
  NVIC_ST_CURRENT_R = 0; 
  NVIC_ST_CTRL_R = 7;
  NVIC_SYS_PRI3_R = (NVIC_SYS_PRI3_R&0x00FFFFFF)|0x40000000; // priority 2
  Init();
  Timer2A_Init(SoundOut,80000000/4000,1);
  EnableInterrupts();
  while(1){
    if(NeedToDraw){
      Draw();
      NeedToDraw = 0;
    }
  }
}

void BookExamples(void){ // examples from the book
  int8_t cc = 0x56; // (‘V’)
  int32_t xx = 100;
  int16_t yy = -100;
  float zz = 3.14159265;
  printf("Hello world\n");      //Hello world
  printf("cc = %c %d\n",cc,cc);  //cc = V 86
  printf("cc = %#x\n",cc);      //cc = 0x56
  printf("xx = %c %d\n",xx,xx);  //xx = d 100
  printf("xx = %#x\n",xx);      //xx = 0x64
  printf("yy = %d\n",yy);        //yy = -100
  printf("%#x   \n",yy);        //yy = 0xffffff9c
  printf("%e \n",zz);            //zz = 3.14159e+00
  printf("%E \n",zz);            //zz = 3.14159E+00
  printf("%f     \n",zz);        //zz = 3.14159
  printf("%g     \n",zz);        //zz = 3.14159 (shorter of two, either f or e)
  printf("%3.2f     \n",zz);    //zz =  3.14
}

int main5(void){ int32_t i,n; // main 5
  SSD1306_Init(SSD1306_SWITCHCAPVCC);
  BookExamples();
  n = 0;
  while(1){
    printf("\ni=");
    for(i=0; i<1; i++){
      printf("%d ",i+n);
    }
    n = n+10000000; // notice what happens when this goes above 2,147,483,647
  }
}
// test of ploting
#define T0 -125
#define Tm 125
int main(void){ int32_t t,y; // main 6
  SSD1306_Init(SSD1306_SWITCHCAPVCC);
  SSD1306_SetPlot(T0,Tm,-100,100,SSD1306_WHITE);
  while(1){
    SSD1306_ClearBuffer();
    for(t=T0; t<=Tm; t= t+2){
      y = 90+(-12*t*t)/1000; // quadratric example
      SSD1306_DrawPoint(t,y);
      SSD1306_OutBuffer();   // 30ms, update entire screen
    }
  }
}
  
