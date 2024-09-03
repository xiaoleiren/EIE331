;/*****************************************************************************/
;/* Display.s: Display interface, written in assembly                         */
;/*****************************************************************************/
;Jonathan Valvano/Andreas Gerstlauer, OS Lab 5 solution, 2/28/16


        AREA |.text|, CODE, READONLY, ALIGN=2
        THUMB
        REQUIRE8
        PRESERVE8

		EXPORT	Display_Message
			
; Declare the external OS kernel symbol for either static or dynamic linking:
; For dynamic linking, OS symbols must be IMPORTed through entries in a linker
;   steering file provided via an -edit command line option to the ARM Linker.
; For static linking, a file with OS symbol definitions, generated via the
;   --symdefs Linker command line option when compiling the OS, must be provided. 
        EXTERN	ST7735_Message [DYNAMIC]
			
; Force a long call across RAM->ROM boundaries to support relocation into RAM
Display_Message
	LDR		R12,=ST7735_Message
	BX		R12


    ALIGN
    END
