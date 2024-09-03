;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.4 *
;* Date/Time created: Mon Jun 29 08:38:11 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../SwitchTestMain.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.4 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\Switch_4C123\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Init")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("Switch_Init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\Switch.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x34)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Input")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("Switch_Input")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\Switch.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0a)

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("Board_Init")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("Board_Init")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\Switch.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x44)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("Board_Input")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("Board_Input")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("..\Switch.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$4, DW_AT_decl_column(0x0a)
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.4\bin\armacpia.exe -@C:\\Users\\VALVAN~1\\AppData\\Local\\Temp\\0666412 
	.sect	".text"
	.clink
	.thumbfunc main
	.thumb
	.global	main

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$5, DW_AT_low_pc(main)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../SwitchTestMain.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x3a)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$5, DW_AT_decl_file("../SwitchTestMain.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$5, DW_AT_decl_column(0x05)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../SwitchTestMain.c",line 58,column 15,is_stmt,address main,isa 1

	.dwfde $C$DW$CIE, main
;----------------------------------------------------------------------
;  58 | int main(void){ uint32_t status;                                       
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../SwitchTestMain.c",line 59,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  59 | Switch_Init();           // PA5 is input                               
;----------------------------------------------------------------------
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("Switch_Init")
	.dwattr $C$DW$7, DW_AT_TI_call
        BL        Switch_Init           ; [DPU_3_PIPE] |59| 
        ; CALL OCCURS {Switch_Init }     ; [] |59| 
	.dwpsn	file "../SwitchTestMain.c",line 60,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  60 | status = Switch_Input(); // 0x00 or 0x20                               
;----------------------------------------------------------------------
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_name("Switch_Input")
	.dwattr $C$DW$8, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |60| 
        ; CALL OCCURS {Switch_Input }    ; [] |60| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |60| 
	.dwpsn	file "../SwitchTestMain.c",line 61,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  61 | status = Switch_Input(); // 0x00 or 0x20                               
;----------------------------------------------------------------------
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("Switch_Input")
	.dwattr $C$DW$9, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |61| 
        ; CALL OCCURS {Switch_Input }    ; [] |61| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |61| 
	.dwpsn	file "../SwitchTestMain.c",line 63,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  63 | Board_Init();             // initialize PF0 and PF4 and make them input
;     | s                                                                      
;  64 |                           // make PF3-1 out (PF3-1 built-in LEDs)      
;----------------------------------------------------------------------
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("Board_Init")
	.dwattr $C$DW$10, DW_AT_TI_call
        BL        Board_Init            ; [DPU_3_PIPE] |63| 
        ; CALL OCCURS {Board_Init }      ; [] |63| 
	.dwpsn	file "../SwitchTestMain.c",line 65,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  65 | GPIO_PORTF_DIR_R |= (RED|BLUE|GREEN);                                  
;  66 |                             // disable alt funct on PF3-1              
;----------------------------------------------------------------------
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |65| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |65| 
        ORR       A1, A1, #14           ; [DPU_3_PIPE] |65| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |65| 
	.dwpsn	file "../SwitchTestMain.c",line 67,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  67 | GPIO_PORTF_AFSEL_R &= ~(RED|BLUE|GREEN);                               
;  68 |                             // enable digital I/O on PF3-1             
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |67| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |67| 
        BIC       A1, A1, #14           ; [DPU_3_PIPE] |67| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |67| 
	.dwpsn	file "../SwitchTestMain.c",line 69,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  69 | GPIO_PORTF_DEN_R |= (RED|BLUE|GREEN);                                  
;  70 |                             // configure PF3-1 as GPIO                 
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |69| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |69| 
        ORR       A1, A1, #14           ; [DPU_3_PIPE] |69| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |69| 
	.dwpsn	file "../SwitchTestMain.c",line 71,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  71 | GPIO_PORTF_PCTL_R = (GPIO_PORTF_PCTL_R&0xFFFF000F)+0x00000000;         
;----------------------------------------------------------------------
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |71| 
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |71| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |71| 
        BFC       A1, #4, #12           ; [DPU_3_PIPE] |71| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |71| 
	.dwpsn	file "../SwitchTestMain.c",line 72,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  72 | GPIO_PORTF_AMSEL_R = 0;     // disable analog functionality on PF      
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |72| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |72| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |72| 
	.dwpsn	file "../SwitchTestMain.c",line 73,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  73 | while(1){                                                              
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 73
;*   Loop closing brace source line  : 82
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../SwitchTestMain.c",line 74,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  74 | status = Board_Input();                                                
;----------------------------------------------------------------------
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("Board_Input")
	.dwattr $C$DW$11, DW_AT_TI_call
        BL        Board_Input           ; [DPU_3_PIPE] |74| 
        ; CALL OCCURS {Board_Input }     ; [] |74| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |74| 
	.dwpsn	file "../SwitchTestMain.c",line 75,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  75 | switch(status){                    // switches are negative logic on PF
;     | 0 and PF4                                                              
;----------------------------------------------------------------------
        B         ||$C$L7||             ; [DPU_3_PIPE] |75| 
        ; BRANCH OCCURS {||$C$L7||}      ; [] |75| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../SwitchTestMain.c",line 76,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  76 | case 0x01: LEDS = BLUE; break;   // SW1 pressed                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |76| 
        MOVS      A1, #4                ; [DPU_3_PIPE] |76| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |76| 
	.dwpsn	file "../SwitchTestMain.c",line 76,column 31,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |76| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |76| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../SwitchTestMain.c",line 77,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  77 | case 0x10: LEDS = RED; break;    // SW2 pressed                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |77| 
        MOVS      A1, #2                ; [DPU_3_PIPE] |77| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |77| 
	.dwpsn	file "../SwitchTestMain.c",line 77,column 30,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |77| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |77| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../SwitchTestMain.c",line 78,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  78 | case 0x00: LEDS = GREEN; break;  // both switches pressed              
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |78| 
        MOVS      A1, #8                ; [DPU_3_PIPE] |78| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |78| 
	.dwpsn	file "../SwitchTestMain.c",line 78,column 32,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |78| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |78| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../SwitchTestMain.c",line 79,column 18,is_stmt,isa 1
;----------------------------------------------------------------------
;  79 | case 0x11: LEDS = 0; break;      // neither switch pressed             
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |79| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |79| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |79| 
	.dwpsn	file "../SwitchTestMain.c",line 79,column 28,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |79| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |79| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../SwitchTestMain.c",line 80,column 16,is_stmt,isa 1
;----------------------------------------------------------------------
;  80 | default: LEDS = (RED|GREEN|BLUE);// unexpected return value            
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |80| 
        MOVS      A1, #14               ; [DPU_3_PIPE] |80| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |80| 
	.dwpsn	file "../SwitchTestMain.c",line 81,column 5,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |81| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |81| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../SwitchTestMain.c",line 75,column 5,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |75| 
        CMP       A1, #0                ; [DPU_3_PIPE] |75| 
        BEQ       ||$C$L4||             ; [DPU_3_PIPE] |75| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |75| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |75| 
        BEQ       ||$C$L2||             ; [DPU_3_PIPE] |75| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |75| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #15           ; [DPU_3_PIPE] |75| 
        BEQ       ||$C$L3||             ; [DPU_3_PIPE] |75| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |75| 
;* --------------------------------------------------------------------------*
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |75| 
        BEQ       ||$C$L5||             ; [DPU_3_PIPE] |75| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |75| 
;* --------------------------------------------------------------------------*
        B         ||$C$L6||             ; [DPU_3_PIPE] |75| 
        ; BRANCH OCCURS {||$C$L6||}      ; [] |75| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$5, DW_AT_TI_end_file("../SwitchTestMain.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	1073894400,32
	.align	4
||$C$CON2||:	.bits	1073894432,32
	.align	4
||$C$CON3||:	.bits	1073894684,32
	.align	4
||$C$CON4||:	.bits	1073894700,32
	.align	4
||$C$CON5||:	.bits	1073894696,32
	.align	4
||$C$CON6||:	.bits	1073893432,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	Switch_Init
	.global	Switch_Input
	.global	Board_Init
	.global	Board_Input

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1d)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1d)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1d)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x17)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x17)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x17)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x17)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x1c)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x16)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x16)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x16)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x16)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x1a)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x21)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x17)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x17)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x20)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x16)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x16)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x20)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("../SwitchTestMain.c")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x01)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 14
	.dwcfi	undefined, 7
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry
	.dwendtag $C$DW$CU

