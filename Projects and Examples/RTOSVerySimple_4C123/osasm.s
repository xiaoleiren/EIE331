;/*****************************************************************************/
; OSasm.s: low-level OS commands, written in assembly                       */
; Runs on LM4F120/TM4C123
; A very simple real time operating system with minimal features.
; Daniel Valvano
; January 29, 2015
;
; This example accompanies the book
;  "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
;  ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
;
;  Programs 4.4 through 4.12, section 4.2
;
;Copyright 2015 by Jonathan W. Valvano, valvano@mail.utexas.edu
;    You may use, edit, run or distribute this file
;    as long as the above copyright notice remains
; THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
; OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
; MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
; VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
; OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
; For more information about my classes, my research, and my books, see
; http://users.ece.utexas.edu/~valvano/
; */

        AREA |.text|, CODE, READONLY, ALIGN=2
        THUMB
        REQUIRE8
        PRESERVE8

        EXTERN  RunI            ; currently running thread
        EXTERN  tcbs            ; array of TCBs
        EXPORT  OS_DisableInterrupts
        EXPORT  OS_EnableInterrupts
        EXPORT  StartOS
        EXPORT  SysTick_Handler


OS_DisableInterrupts
        CPSID   I
        BX      LR


OS_EnableInterrupts
        CPSIE   I
        BX      LR


SysTick_Handler       ; 1) Saves R0-R3,R12,LR,PC,PSR
    CPSID   I         ; 2) Prevent interrupt during switch
    PUSH    {R4-R11}  ; 3) Save remaining regs r4-11
    LDR     R0,=RunI  ; 4) R0=pointer to RunI, old thread
    LDR     R1,[R0]   ;    R1 = RunI
    LSL     R2,R1,#2  ; R2 = RunI*4
    LDR     R3,=tcbs  ; points to tcbs
    ADD     R4,R3,R2  ; points to tcbs[RunI]
    STR     SP,[R4]   ; 5) Save SP into TCB
    ADD     R1,#1     ; 6) R1 = RunI+1
    AND     R1,#3     ; wrap 4 to 0
    STR     R1,[R0]   ; RunI = R1
    LSL     R2,R1,#2  ; R2 = RunI*4
    ADD     R4,R3,R2  ; points to tcbs[RunI]
    LDR     SP,[R4]   ; 7) new thread SP; SP = tcbs[RunI];
    POP     {R4-R11}  ; 8) restore regs r4-11
    CPSIE   I         ; 9) tasks run with interrupts enabled
    BX   LR           ; 10) restore R0-R3,R12,LR,PC,PSR



StartOS
    LDR     R0, =RunI  ; 4) R0=pointer to RunI, old thread
    LDR     R1, [R0]   ;    R1 = RunI
    LSL     R2,R1,#2   ;R2 = RunI*4
    LDR     R3,=tcbs   ;points to tcbs
    ADD     R3,R2      ;points to tcbs[RunI]
    LDR     SP, [R3]           ; new thread SP; SP = tcbs[RunI];
    POP     {R4-R11}           ; restore regs r4-11
    POP     {R0-R3}            ; restore regs r0-3
    POP     {R12}
    POP     {LR}               ; discard LR from initial stack
    POP     {LR}               ; start location
    POP     {R1}               ; discard PSR
    CPSIE   I                  ; Enable interrupts at processor level
    BX      LR                 ; start first thread

    ALIGN
    END
