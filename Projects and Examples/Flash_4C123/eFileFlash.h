// eFile.h
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
the system will use a RAM buffer for temporary storage*/


// erase the disk by writing 0xFF to all bytes
int eFile_Format(void);

// File read file n. 
// Check directory to see if file n exists, 
// If the files does not exist return null pointer, 
// otherwise this function returns a pointer to the data
uint8_t *eFile_Read(int n);

// File write function. 
// Allocate space for a new file, 
// store the 1024 bytes of data on the disk, 
// update the directory onto the disk, 
//  and return the file number of the new file. 
// If the disk is full return -1, 
// otherwise this function returns 1 to 127. 
// First block holds the directory and free space management. 
int eFile_Write(uint8_t data[1024]);

// File erase function. 
// This function will erase an existing file, 
// updating the directory on the disk. 
// n is the file number to erase (1 to 127). Return 0 (success) if the file used to exist and now it is erased. Return -1 if the file did not exist.
int eFile_Erase(uint32_t n);
  

