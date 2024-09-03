/**
 * @file      UART0int.h
 * @brief     Interrupt driven serial I/O on UART0.
 * @details   Runs on LM4F120/TM4C123. 
 * Uses UART0 to implement bidirectional data transfer to and from a
 * computer running PuTTy.  
 * Interrupts, semaphores and FIFOs  * are used.
 * @version   V1.0
 * @author    Valvano
 * @copyright Copyright 2017 by Jonathan W. Valvano, valvano@mail.utexas.edu,
 * @warning   AS-IS
 * @note      For more information see  http://users.ece.utexas.edu/~valvano/
 * @date      Jan 30, 2020

 ******************************************************************************/
// This version is for RTOS labs
// Modified by EE345L students Charlie Gough && Matt Hawk
// Modified by EE345M students Agustinus Darmawan && Mingjie Qiu

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2020
   Program 4.12, Section 4.9.4, Figures 4.26 and 4.40

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

// U0Rx (VCP receive) connected to PA0
// U0Tx (VCP transmit) connected to PA1
#ifndef UART_H
#define UART_H
/**
 * \brief standard ASCII symbols
 */
#define CR   0x0D
#define LF   0x0A
#define BS   0x08
#define ESC  0x1B
#define SP   0x20
#define DEL  0x7F

/**
 * @details  Initialize the UART using interrupts
 * @note 115,200 baud rate (assuming 80 MHz clock)<br>
 8 bit word length, no parity bits, one stop bit, FIFOs enabled
 * @param  none
 * @return none
 * @brief  Initialize the UART.
 */
void UART_Init(void);

/**
 * @details  Wait for new serial port input, interrupt driven
 * @param  none
 * @return ASCII code for key typed
 * @brief  UART input.
 */
char UART_InChar(void);

/**
 * @details  Input ASCII character from UART
 * @param  none
 * @return 0 if RxFifo is empty, character if not
 * @brief  UART input non-blocking.
 */
char UART_InCharNonBlock(void);

/**
 * @details  Send serial port output, interrupt driven
 * @param  data is an 8-bit ASCII character to be transferred
 * @return none
 * @brief  8-bit serial output.
 */
void UART_OutChar(char data);

/**
 * @details  Non-blocking output ASCII character to UART
 * @param  data is an 8-bit ASCII character to be transferred
 * @return none, error if TxFifo is full
 * @brief  UART output non-blocking.
 */
void UART_OutCharNonBlock(char data);

/**
 * @details  Output String (NULL termination), interrupt driven
 * @param  pt pointer to a NULL-terminated string to be transferred
 * @return none
 * @brief  String serial output.
 */
void UART_OutString(char *pt);

/**
 * @details  Wait for new serial port input, interrupt driven
 * @note UART_InUDec accepts ASCII input in unsigned decimal format<br>
  and converts to a 32-bit unsigned number<br>
  valid range is 0 to 4294967295 (2^32-1)<br>
  If you enter a number above 4294967295, it will return an incorrect value.<br>
  Backspace will remove last digit typed.
 * @param  none
 * @return 32-bit unsigned number
 * @brief  UART input unsigned number.
 */
uint32_t UART_InUDec(void);

/**
 * @details  Output a 32-bit number in unsigned decimal format
 * @param  n 32-bit number to be transferred
 * @note Variable format 1-10 digits with no space before or after
 * @return none
 * @brief  Number serial output.
 */
void UART_OutUDec(uint32_t n);

/**
 * @details  Output a 32-bit number in unsigned decimal format
 * @param  n 32-bit number to be transferred, 0 to 999
 * @note Fixed format 3 digits with space after
 * @return none
 * @brief  Number serial output.
 */
 void UART_OutUDec3(unsigned long n);

/**
 * @details  Output a 32-bit number in unsigned decimal format
 * @param  n 32-bit number to be transferred, 0 to 99999
 * @note Fixed format 5 digits with space after
 * @return none
 * @brief  Number serial output.
 */
void UART_OutUDec5(unsigned long n);

/**
 * @details  Output a 32-bit number in signed decimal format
 * @param  n 32-bit number to be transferred
 * @note Variable format 1-10 digits with no space before or after
 * @return none
 * @brief  Number serial output.
 */
void UART_OutSDec(long n);

/**
 * @details  Wait for new serial port input, interrupt driven
 * @note UART_InUHex accepts ASCII input in unsigned hex format<br>
  No '$' or '0x' should be entered, just the 1 to 8 hex digits<br>
  It will convert lower case a-f to uppercase A-F<br>
  and converts to a 16 bit unsigned number<br>
  value range is 0 to FFFFFFFF<br>
  If you enter a number above FFFFFFFF, it will return an incorrect value<br>
  Backspace will remove last digit typed.
 * @param  none
 * @return 32-bit unsigned number
 * @brief  UART input unsigned number.
 */
uint32_t UART_InUHex(void);

/**
 * @details  Output a 32-bit number in unsigned hexadecimal format
 * @param  n 32-bit number to be transferred
 * @note Variable format 1-8 digits with no space before or after
 * @return none
 * @brief  Number serial output.
 */
void UART_OutUHex(uint32_t number);

/**
 * @details  Accepts ASCII characters from the serial port
 * @note Accept input until <enter> is typed<br>
 or until max length of the string is reached.<br>
 It echoes each character as it is inputted.<br>
 If a backspace is inputted, the string is modified and the backspace is echoed<br>
 Terminates the string with a null character<br>
 -- Modified by Agustinus Darmawan + Mingjie Qiu --
 * @param  bufPt pointer to empty buffer, 
 * @param  max size of buffer
 * @return none
 * @brief  UART input ASCII string.
 */
void UART_InString(char *bufPt, uint16_t max);

/**
 * @details  Output a 32-bit number in 0.01 fixed-point format
 * @param  number 32-bit signed number to be transferred, -99999 to +99999
 * @note Fixed format, always 7 characters <br>
  12345 to " 123.45"  <br>
  -22100 to "-221.00"<br>
  -102 to "  -1.02" <br>
     31 to "   0.31" <br>
  error     " ***.**" <br>  
 * @return none
 * @brief  Fixed-point output.
 */
void UART_Fix2(long number);
#endif
