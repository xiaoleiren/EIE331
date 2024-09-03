// filename ************** eFile.c *****************************
// High-level routines to implement a solid-state disk 
// Wrapper around FAT filesystem for Lab 5
// Andreas Gerstlauer 2/27/20
#include <stdint.h>
#include <string.h>
#include "../RTOS_Labs_common/OS.h"
#include "../RTOS_Labs_common/eFile.h"
#include "ff.h"
#include <stdio.h>


// Display semaphore
extern Sema4Type LCDFree;  // this should really be handled in eDisk.c, not eFile.c

// Static file system objects
static FATFS g_sFatFs;
static DIR d; 
static FIL f; 
static FILINFO fi;


//---------- eFile_Init-----------------
// Activate the file system, without formating
// Input: none
// Output: 0 if successful and 1 on failure (already initialized)
int eFile_Init(void){ // initialize file system
  // do nothing for FAT
  return 0;
}

//---------- eFile_Format-----------------
// Erase all files, create blank directory, initialize free space manager
// Input: none
// Output: 0 if successful and 1 on failure (e.g., trouble writing to flash)
int eFile_Format(void){ // erase disk, add format
	OS_bWait(&LCDFree);
  if(f_mkfs("", 0, 0)){
		OS_bSignal(&LCDFree);
    return 1;
  }
	OS_bSignal(&LCDFree);  
  return 0;
}

//---------- eFile_Mount-----------------
// Mount the file system and load metadata
// Input: none
// Output: 0 if successful and 1 on failure (already initialized)
int eFile_Mount(void){ // mount disk
	OS_bWait(&LCDFree);
  if(f_mount(&g_sFatFs, "", 0)){
		OS_bSignal(&LCDFree);
    return 1;
  }
	OS_bSignal(&LCDFree);  
  return 0;
}

//---------- eFile_Create-----------------
// Create a new, empty file with one allocated block
// Input: file name is an ASCII string up to seven characters 
// Output: 0 if successful and 1 on failure (e.g., trouble writing to flash)
int eFile_Create( const char name[]){  // create new file, make it empty 
	OS_bWait(&LCDFree);
  if(f_open(&f, name, FA_CREATE_NEW)){
		OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;   
}

//---------- eFile_WOpen-----------------
// Open the file, read into RAM last block
// Input: file name is an ASCII string up to seven characters
// Output: 0 if successful and 1 on failure (e.g., trouble reading from flash)
int eFile_WOpen( const char name[]){      // open a file for writing 
	OS_bWait(&LCDFree);
  if(f_open(&f, name, FA_WRITE)){
		OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;   
}

//---------- eFile_Write-----------------
// Save at end of the open file
// Input: data to be saved
// Output: 0 if successful and 1 on failure (e.g., trouble writing to flash)
int eFile_Write( char data){
  unsigned written;
  OS_bWait(&LCDFree);
  if(f_write(&f, &data, 1, &written) || (written != 1)){
    OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;  
}

//---------- eFile_WClose-----------------
// Close the file, left disk in a state power can be removed
// Input: none
// Output: 0 if successful and 1 on failure (e.g., trouble writing to flash)
int eFile_WClose(void){ // close the file for writing
	OS_bWait(&LCDFree);
  if(f_close(&f)){
		OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;  
}

//---------- eFile_ROpen-----------------
// Open the file, read first block into RAM 
// Input: file name is an ASCII string up to seven characters
// Output: 0 if successful and 1 on failure (e.g., trouble reading from flash)
int eFile_ROpen( const char name[]){      // open a file for reading 
	OS_bWait(&LCDFree);
  if(f_open(&f, name, FA_READ)){
		OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;   
}
 
//---------- eFile_ReadNext-----------------
// Retreive data from open file
// Input: none
// Output: return by reference data
//         0 if successful and 1 on failure (e.g., end of file)
int eFile_ReadNext( char *pt){       // get next byte 
  unsigned read;
  OS_bWait(&LCDFree);
  if(f_read(&f, pt, 1, &read) || (read != 1)){
    OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0; 
}

//---------- eFile_RClose-----------------
// Close the reading file
// Input: none
// Output: 0 if successful and 1 on failure (e.g., wasn't open)
int eFile_RClose(void){ // close the file for writing
	OS_bWait(&LCDFree);
  if(f_close(&f)){
		OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;
}

//---------- eFile_Delete-----------------
// delete this file
// Input: file name is a single ASCII letter
// Output: 0 if successful and 1 on failure (e.g., trouble writing to flash)
int eFile_Delete( const char name[]){  // remove this file 
	OS_bWait(&LCDFree);
  if(f_unlink(name)){
    OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;
}                             

//---------- eFile_DOpen-----------------
// Open a (sub)directory, read into RAM
// Input: directory name is an ASCII string up to seven characters
//        (empty/NULL for root directory)
// Output: 0 if successful and 1 on failure (e.g., trouble reading from flash)
int eFile_DOpen( const char name[]){ // open directory
	OS_bWait(&LCDFree);
  if(f_opendir(&d, name)) {
		OS_bSignal(&LCDFree);
		return 1;
  }
	OS_bSignal(&LCDFree);
  return 0;
}
  
//---------- eFile_DirNext-----------------
// Retreive directory entry from open directory
// Input: none
// Output: return file name and size by reference
//         0 if successful and 1 on failure (e.g., end of file)
int eFile_DirNext( char *name[], unsigned long *size){  // get next entry 
	OS_bWait(&LCDFree);
	if(f_readdir(&d, &fi) || !fi.fname[0]) {
		OS_bSignal(&LCDFree);
		return 1;
  }
  *name = fi.fname;
  *size = fi.fsize;
	OS_bSignal(&LCDFree);
  return 0;
}

//---------- eFile_DClose-----------------
// Close the directory
// Input: none
// Output: 0 if successful and 1 on failure (e.g., wasn't open)
int eFile_DClose(void){ // close the directory
	OS_bWait(&LCDFree);
  if(f_closedir(&d)){
		OS_bSignal(&LCDFree);
    return 1;
  }
  OS_bSignal(&LCDFree);
  return 0;
}

//---------- eFile_Unmount-----------------
// Unmount and deactivate the file system
// Input: none
// Output: 0 if successful and 1 on failure (not currently mounted)
int eFile_Unmount(void){ 
	OS_bWait(&LCDFree);
  if(f_mount(NULL, "", 0)){
		OS_bSignal(&LCDFree);
    return 1;
  }
	OS_bSignal(&LCDFree);  
  return 0;   
}
