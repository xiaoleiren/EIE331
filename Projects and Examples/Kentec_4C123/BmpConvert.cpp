// BmpConvert.cpp : Defines the entry point for the console application.
//
// ****************************** LogoDump.c ****************************
// Purpose: convert bmp into C constants for LM3S8962 graphics
// simple binary to ASCII hex converter
// Last modified 11/12/2012 by Jonathan W. Valvano

// Copyright 2012 by Jonathan W. Valvano, valvano@mail.utexas.edu
//    You may use, edit, run or distribute this file
//    as long as the above copyright notice remains
/* To create a logo for LM3S8962
1) Create a bmp file
   4-bit color
   width less than or equal to 128 pixels
   height less than or equal 80 pixels
   width must be even
   save the image as a bmp file
   store in same directory as BmpConvert.exe
2) Delete any old logo.txt file in directory
3) Execute LogoDump.exe
   Type the image name 
   E.g., if the file is horse.bmp, then type horse
4) Open the corresponding txt file, select all, copy
5) Open uVision compiler
   paste new image as a data constant
6) Draw the image by calling (lower left corner at 20,70)
  RIT128x96x4_BMP(20, 70, Horse);
*/

#include "stdafx.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// 4-bit color depth bmp files
char BMPname[48];
char TXTname[48];
char name[48];
#define NUMBERS_PER_LINE 32  
void main(void){ unsigned char data; int i;
  unsigned char nibble;  unsigned char letter;
  FILE *in, *out;
  printf("This program converts a 16-color BMP into C source code for OLED\n");
  printf("Enter file: ");
  scanf("%s", BMPname);
  strcpy(name,"const unsigned char ");
  strcat(name,BMPname);
  strcat(name,"[] ={");
  strcpy(TXTname,BMPname);
  strcat(BMPname,".bmp");
  strcat(TXTname,".txt");
  printf("Converting file %s to file %s\n ",BMPname, TXTname);

  if((in = fopen(BMPname, "rt"))== NULL){
    fprintf(stderr, "Cannot open bmp file.\n");
    scanf("%d",&data); 
    return;
  }
  if((out = fopen(TXTname, "wt")) == NULL){
    fprintf(stderr, "Cannot open txt file.\n");
    scanf("%d",&data); 
    return;
  }
  i = 0;
  while(name[i]){
    fputc(name[i], out);
    i++;
  }
  fputc(10, out);     // Line feed
  i = 0;
  while (!feof(in)){
    data = fgetc(in);
    fputc(32, out);
    fputc('0', out);
    fputc('x', out);
    nibble = data/16; // top 4 bits
    if(nibble<10){
       letter = '0'+nibble;
    }
    else{
      letter = 'A'+nibble-10;
    }
    fputc(letter, out);
  
    nibble = data%16;  // bottom 4 bits
    if(nibble<10){
      letter = '0'+nibble;
    }
    else {
      letter = 'A'+nibble-10;
    }
    fputc(letter, out);
    fputc(',', out);
    i++;
    if((i%NUMBERS_PER_LINE)==0){
      fputc(10, out);     // Line feed
    }
  }
  fputc(13, out);
  fputc(10, out);
  fputc('}', out);
  fputc(';', out);
  fclose(in);
  fputc(13, out);
  fputc(10, out);
  fclose(out);



}
