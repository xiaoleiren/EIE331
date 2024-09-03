// eDiskFlash.c
// Runs on LM4F120/TM4C123
// Simple file system using the flash
// Daniel and Jonathan Valvano
// April 25, 2017

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2017
   "Embedded Systems: Real-Time Operating Systems for ARM Cortex-M Microcontrollers",
   ISBN: 978-1466468863, Jonathan Valvano, copyright (c) 2017

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
#include "../inc/FlashProgram.h" 
#include "../inc/eFileFlash.h"
/* A very simple file system. 
This file system exists in the 128k internal ROM. 
ROM addresses 0 to 0x0001.FFFF will contain programs and other constant data. 
However, locations 0x0002.0000 to 0x0003.FFFF will contain the disk. 
The block size of this disk is fixed at 1024 bytes. 
This means there are 128 blocks: 
  0x0002.0000, 
  0x0002.0400, 
  0x0002.0800,… 
  0x0003.FC00. 
At initialization the entire disk is erased, filled with 0xFF, 
and you will consider this state as formatted. 
Initially, of course, there are no files on the disk. 
Each file has exactly 1024 bytes of data. 
This file system does not have file names, 
rather files are identified by a number. 
Your system should support up to 127 files. 
The files are numbered from 1 to 127. 
You will use the First block for directory/free space management. 
File number n (1 to 127) will be in the block starting at
	0x00020000+1024*n
After each file operation all information will be placed onto the disk.
However, during execution of your OS commands, 
the system will use this RAM buffer for temporary storage*/
uint8_t Buffer[1024];

// erase the disk by writing 0xFF to all bytes
int eFile_Format(void){
uint32_t n;
  for(n=0;n<128;n++){
    if(Flash_Erase(0x00020000+1024*n)) return 1;
  }
  return 0;
}
// Reads 1024 bytes of the disk into RAM. 
// Let n be the block number (1 to 127) and 
// buf be a RAM array into which the data are read. 
void ReadBlock(uint32_t n, uint8_t buf[1024]){ 
uint32_t i; 
uint8_t *block;
  block = (uint8_t *)0x00020000+1024*n;
  for(i=0;i<1024;i++){
    buf[i] = block[i];
  }
}

// File read file n. 
// Check directory to see if file n exists, 
// If the files does not exist return null pointer, 
// otherwise this function returns a pointer to the data
uint8_t *eFile_Read(int n){
  ReadBlock(0, Buffer);
  if(Buffer[n] == 0xff){ 
    return (uint8_t *) 0;
  }
  return (uint8_t *)(0x00020000+1024*n); // data pointer
}

// File write function. 
// Allocate space for a new file, 
// store the 1024 bytes of data on the disk, 
// update the directory onto the disk, 
//  and return the file number of the new file. 
// If the disk is full return -1, 
// otherwise this function returns 1 to 127. 
// First block holds the directory and free space management. 
int eFile_Write(uint8_t data[1024]){
uint32_t free=1;
// directory/free space is bytes 1 to 127, FF means free
  ReadBlock(0, Buffer);
  while(free < 128){          // find free block
    if(Buffer[free] == 0xff){ // free?
      Flash_WriteArray((uint32_t *)data, 0x00020000+1024*free,256); // data to disk
      Buffer[free] = 1;       // used
      Flash_WriteArray((uint32_t *)Buffer, 0x00020000,256); // update directory
      return free;
    }
    free++;  // try next block
  }
  return -1; // full
}

// File erase function. 
// This function will erase an existing file, 
// updating the directory on the disk. 
// n is the file number to erase (1 to 127). 
// Return 0 (success) if the file used to exist and now it is erased. 
// Return -1 if the file did not exist.
int eFile_Erase(uint32_t n){
  if((n<1)||(n>127)) return -1;
  ReadBlock(0, Buffer);           // load directory
  if(Buffer[n] != 1) return -1;   // does not exist
  Flash_Erase(0x00020000);
  Buffer[n] = 0xFF;
  Flash_WriteArray((uint32_t *)Buffer, 0x00020000,256); // update directory
  Flash_Erase(0x00020000+1024*n);
  return 0;
}
  

