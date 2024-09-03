;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.4 *
;* Date/Time created: Mon Jun 29 08:38:10 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Switch.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.4 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\Switch_4C123\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SysTick_Init")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("SysTick_Init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\SysTick.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x24)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("SysTick_Wait")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("SysTick_Wait")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\SysTick.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x28)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$2

;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.4\bin\armacpia.exe -@C:\\Users\\VALVAN~1\\AppData\\Local\\Temp\\0025612 
	.sect	".text"
	.clink
	.thumbfunc Switch_Init
	.thumb
	.global	Switch_Init

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Init")
	.dwattr $C$DW$4, DW_AT_low_pc(Switch_Init)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("Switch_Init")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$4, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x40)
	.dwattr $C$DW$4, DW_AT_decl_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Switch.c",line 64,column 23,is_stmt,address Switch_Init,isa 1

	.dwfde $C$DW$CIE, Switch_Init
;----------------------------------------------------------------------
;  64 | void Switch_Init(void){                                                
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_Init                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
Switch_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../Switch.c",line 65,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  65 | SysTick_Init();                                                        
;----------------------------------------------------------------------
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_name("SysTick_Init")
	.dwattr $C$DW$5, DW_AT_TI_call
        BL        SysTick_Init          ; [DPU_3_PIPE] |65| 
        ; CALL OCCURS {SysTick_Init }    ; [] |65| 
	.dwpsn	file "../Switch.c",line 66,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  66 | SYSCTL_RCGCGPIO_R |= 0x00000001;     // 1) activate clock for Port A   
;----------------------------------------------------------------------
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |66| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |66| 
        ORR       A1, A1, #1            ; [DPU_3_PIPE] |66| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |66| 
	.dwpsn	file "../Switch.c",line 67,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  67 | while((SYSCTL_PRGPIO_R&0x01) == 0){};// ready?                         
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 67
;*   Loop closing brace source line  : 67
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../Switch.c",line 67,column 9,is_stmt,isa 1
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |67| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |67| 
        LSRS      A1, A1, #1            ; [DPU_3_PIPE] |67| 
        BCC       ||$C$L1||             ; [DPU_3_PIPE] |67| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |67| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Switch.c",line 68,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  68 | GPIO_PORTA_AMSEL_R &= ~0x20;      // 3) disable analog on PA5          
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |68| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |68| 
        BIC       A1, A1, #32           ; [DPU_3_PIPE] |68| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |68| 
	.dwpsn	file "../Switch.c",line 69,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  69 | GPIO_PORTA_PCTL_R &= ~0x00F00000; // 4) PCTL GPIO on PA5               
;----------------------------------------------------------------------
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |69| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |69| 
        BIC       A1, A1, #15728640     ; [DPU_3_PIPE] |69| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |69| 
	.dwpsn	file "../Switch.c",line 70,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  70 | GPIO_PORTA_DIR_R &= ~0x20;        // 5) direction PA5 input            
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |70| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |70| 
        BIC       A1, A1, #32           ; [DPU_3_PIPE] |70| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |70| 
	.dwpsn	file "../Switch.c",line 71,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  71 | GPIO_PORTA_AFSEL_R &= ~0x20;      // 6) PA5 regular port function      
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |71| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |71| 
        BIC       A1, A1, #32           ; [DPU_3_PIPE] |71| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |71| 
	.dwpsn	file "../Switch.c",line 72,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  72 | GPIO_PORTA_DEN_R |= 0x20;         // 7) enable PA5 digital port        
;----------------------------------------------------------------------
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |72| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |72| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |72| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |72| 
	.dwpsn	file "../Switch.c",line 73,column 1,is_stmt,isa 1
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x49)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.thumbfunc Switch_Input
	.thumb
	.global	Switch_Input

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Input")
	.dwattr $C$DW$7, DW_AT_low_pc(Switch_Input)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("Switch_Input")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$7, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Switch.c",line 79,column 28,is_stmt,address Switch_Input,isa 1

	.dwfde $C$DW$CIE, Switch_Input
;----------------------------------------------------------------------
;  79 | uint32_t Switch_Input(void){                                           
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_Input                                               *
;*                                                                           *
;*   Regs Modified     : A1                                                  *
;*   Regs Used         : A1,LR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Switch_Input:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Switch.c",line 80,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  80 | return PA5; // return 0x20(pressed) or 0(not pressed)                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON8           ; [DPU_3_PIPE] |80| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |80| 
	.dwpsn	file "../Switch.c",line 81,column 1,is_stmt,isa 1
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x51)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.thumbfunc Switch_Input2
	.thumb
	.global	Switch_Input2

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Input2")
	.dwattr $C$DW$9, DW_AT_low_pc(Switch_Input2)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("Switch_Input2")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x52)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$9, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x52)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Switch.c",line 82,column 29,is_stmt,address Switch_Input2,isa 1

	.dwfde $C$DW$CIE, Switch_Input2
;----------------------------------------------------------------------
;  82 | uint32_t Switch_Input2(void){                                          
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_Input2                                              *
;*                                                                           *
;*   Regs Modified     : A1                                                  *
;*   Regs Used         : A1,LR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Switch_Input2:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Switch.c",line 83,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  83 | return (GPIO_PORTA_DATA_R&0x20); // 0x20(pressed) or 0(not pressed)    
;----------------------------------------------------------------------
        LDR       A1, $C$CON9           ; [DPU_3_PIPE] |83| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |83| 
        AND       A1, A1, #32           ; [DPU_3_PIPE] |83| 
	.dwpsn	file "../Switch.c",line 84,column 1,is_stmt,isa 1
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.thumbfunc Board_Init
	.thumb
	.global	Board_Init

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("Board_Init")
	.dwattr $C$DW$11, DW_AT_low_pc(Board_Init)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("Board_Init")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x5d)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Switch.c",line 93,column 22,is_stmt,address Board_Init,isa 1

	.dwfde $C$DW$CIE, Board_Init
;----------------------------------------------------------------------
;  93 | void Board_Init(void){                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Board_Init                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Board_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Switch.c",line 94,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  94 | SYSCTL_RCGCGPIO_R |= 0x20;     // 1) activate Port F                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |94| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |94| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |94| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |94| 
	.dwpsn	file "../Switch.c",line 95,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  95 | while((SYSCTL_PRGPIO_R&0x20) == 0){};// ready?                         
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 95
;*   Loop closing brace source line  : 95
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
	.dwpsn	file "../Switch.c",line 95,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  96 | // 2a) unlock GPIO Port F Commit Register                              
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |95| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |95| 
        LSRS      A1, A1, #6            ; [DPU_3_PIPE] |95| 
        BCC       ||$C$L2||             ; [DPU_3_PIPE] |95| 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |95| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Switch.c",line 97,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  97 | GPIO_PORTF_LOCK_R = GPIO_LOCK_KEY;                                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON11          ; [DPU_3_PIPE] |97| 
        LDR       A2, $C$CON10          ; [DPU_3_PIPE] |97| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |97| 
	.dwpsn	file "../Switch.c",line 98,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  98 | GPIO_PORTF_CR_R |= (SW1|SW2);  // 2b) enable commit for PF4 and PF0    
;  99 |                                // 3) disable analog functionality on PF
;     | 4 and PF0                                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON12          ; [DPU_3_PIPE] |98| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |98| 
        ORR       A1, A1, #17           ; [DPU_3_PIPE] |98| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |98| 
	.dwpsn	file "../Switch.c",line 100,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 100 | GPIO_PORTF_AMSEL_R &= ~(SW1|SW2);                                      
; 101 |                                // 4) configure PF0 and PF4 as GPIO     
;----------------------------------------------------------------------
        LDR       A2, $C$CON13          ; [DPU_3_PIPE] |100| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |100| 
        BIC       A1, A1, #17           ; [DPU_3_PIPE] |100| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |100| 
	.dwpsn	file "../Switch.c",line 102,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 102 | GPIO_PORTF_PCTL_R = (GPIO_PORTF_PCTL_R&0xFFF0FFF0)+0x00000000;         
;----------------------------------------------------------------------
        LDR       A1, $C$CON14          ; [DPU_3_PIPE] |102| 
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |102| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |102| 
        BIC       A1, A1, #983055       ; [DPU_3_PIPE] |102| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |102| 
	.dwpsn	file "../Switch.c",line 103,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 103 | GPIO_PORTF_DIR_R &= ~(SW1|SW2);// 5) make PF0 and PF4 in (built-in butt
;     | ons)                                                                   
; 104 |                                // 6) disable alt funct on PF0 and PF4  
;----------------------------------------------------------------------
        LDR       A2, $C$CON15          ; [DPU_3_PIPE] |103| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |103| 
        BIC       A1, A1, #17           ; [DPU_3_PIPE] |103| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |103| 
	.dwpsn	file "../Switch.c",line 105,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 105 | GPIO_PORTF_AFSEL_R &= ~(SW1|SW2);                                      
; 106 | //  delay = SYSCTL_RCGC2_R;        // put a delay here if you are seein
;     | g erroneous NMI                                                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON16          ; [DPU_3_PIPE] |105| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |105| 
        BIC       A1, A1, #17           ; [DPU_3_PIPE] |105| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |105| 
	.dwpsn	file "../Switch.c",line 107,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 107 | GPIO_PORTF_PUR_R |= (SW1|SW2); // enable weak pull-up on PF0 and PF4   
;----------------------------------------------------------------------
        LDR       A2, $C$CON17          ; [DPU_3_PIPE] |107| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |107| 
        ORR       A1, A1, #17           ; [DPU_3_PIPE] |107| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |107| 
	.dwpsn	file "../Switch.c",line 108,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 108 | GPIO_PORTF_DEN_R |= (SW1|SW2); // 7) enable digital I/O on PF0 and PF4 
;----------------------------------------------------------------------
        LDR       A2, $C$CON18          ; [DPU_3_PIPE] |108| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |108| 
        ORR       A1, A1, #17           ; [DPU_3_PIPE] |108| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |108| 
	.dwpsn	file "../Switch.c",line 109,column 1,is_stmt,isa 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.thumbfunc Board_Input
	.thumb
	.global	Board_Input

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("Board_Input")
	.dwattr $C$DW$13, DW_AT_low_pc(Board_Input)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("Board_Input")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$13, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x76)
	.dwattr $C$DW$13, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Switch.c",line 118,column 27,is_stmt,address Board_Input,isa 1

	.dwfde $C$DW$CIE, Board_Input
;----------------------------------------------------------------------
; 118 | uint32_t Board_Input(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Board_Input                                                *
;*                                                                           *
;*   Regs Modified     : A1                                                  *
;*   Regs Used         : A1,LR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Board_Input:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Switch.c",line 119,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 119 | return SWITCHES;                                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON19          ; [DPU_3_PIPE] |119| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |119| 
	.dwpsn	file "../Switch.c",line 120,column 1,is_stmt,isa 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x78)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink
	.thumbfunc Switch_Init3
	.thumb
	.global	Switch_Init3

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Init3")
	.dwattr $C$DW$15, DW_AT_low_pc(Switch_Init3)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("Switch_Init3")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x80)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Switch.c",line 128,column 24,is_stmt,address Switch_Init3,isa 1

	.dwfde $C$DW$CIE, Switch_Init3
;----------------------------------------------------------------------
; 128 | void Switch_Init3(void){                                               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_Init3                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Switch_Init3:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Switch.c",line 129,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 129 | SYSCTL_RCGCGPIO_R |= 0x02;        // 1) activate clock for Port B      
;----------------------------------------------------------------------
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |129| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |129| 
        ORR       A1, A1, #2            ; [DPU_3_PIPE] |129| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |129| 
	.dwpsn	file "../Switch.c",line 130,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 130 | while((SYSCTL_PRGPIO_R&0x02) == 0){};// ready?                         
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L3||
;*
;*   Loop source line                : 130
;*   Loop closing brace source line  : 130
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../Switch.c",line 130,column 9,is_stmt,isa 1
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |130| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |130| 
        LSRS      A1, A1, #2            ; [DPU_3_PIPE] |130| 
        BCC       ||$C$L3||             ; [DPU_3_PIPE] |130| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |130| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Switch.c",line 131,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 131 | GPIO_PORTB_DIR_R &= ~0x02;        // PB1 is an input                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON20          ; [DPU_3_PIPE] |131| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |131| 
        BIC       A1, A1, #2            ; [DPU_3_PIPE] |131| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |131| 
	.dwpsn	file "../Switch.c",line 132,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 132 | GPIO_PORTB_AFSEL_R &= ~0x02;      // regular port function             
;----------------------------------------------------------------------
        LDR       A2, $C$CON21          ; [DPU_3_PIPE] |132| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |132| 
        BIC       A1, A1, #2            ; [DPU_3_PIPE] |132| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |132| 
	.dwpsn	file "../Switch.c",line 133,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 133 | GPIO_PORTB_AMSEL_R &= ~0x02;      // disable analog on PB1             
;----------------------------------------------------------------------
        LDR       A2, $C$CON22          ; [DPU_3_PIPE] |133| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |133| 
        BIC       A1, A1, #2            ; [DPU_3_PIPE] |133| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |133| 
	.dwpsn	file "../Switch.c",line 134,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 134 | GPIO_PORTB_PCTL_R &= ~0x000000F0; // PCTL GPIO on PB1                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON23          ; [DPU_3_PIPE] |134| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |134| 
        BIC       A1, A1, #240          ; [DPU_3_PIPE] |134| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |134| 
	.dwpsn	file "../Switch.c",line 135,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 135 | GPIO_PORTB_DEN_R |= 0x02;         // PB3-0 enabled as a digital port   
;----------------------------------------------------------------------
        LDR       A2, $C$CON24          ; [DPU_3_PIPE] |135| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |135| 
        ORR       A1, A1, #2            ; [DPU_3_PIPE] |135| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |135| 
	.dwpsn	file "../Switch.c",line 136,column 1,is_stmt,isa 1
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x88)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.thumbfunc Switch_Input3
	.thumb
	.global	Switch_Input3

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Input3")
	.dwattr $C$DW$17, DW_AT_low_pc(Switch_Input3)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("Switch_Input3")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$17, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x8e)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$17, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$17, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../Switch.c",line 142,column 29,is_stmt,address Switch_Input3,isa 1

	.dwfde $C$DW$CIE, Switch_Input3
;----------------------------------------------------------------------
; 142 | uint32_t Switch_Input3(void){                                          
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_Input3                                              *
;*                                                                           *
;*   Regs Modified     : A1                                                  *
;*   Regs Used         : A1,LR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Switch_Input3:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../Switch.c",line 143,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 143 | return PB1;      // 0x02 if pressed, 0x00 if not pressed               
;----------------------------------------------------------------------
        LDR       A1, $C$CON25          ; [DPU_3_PIPE] |143| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |143| 
	.dwpsn	file "../Switch.c",line 144,column 1,is_stmt,isa 1
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x90)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text"
	.clink
	.thumbfunc Switch_Debounce
	.thumb
	.global	Switch_Debounce

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_Debounce")
	.dwattr $C$DW$19, DW_AT_low_pc(Switch_Debounce)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("Switch_Debounce")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x9a)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$19, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$19, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../Switch.c",line 154,column 31,is_stmt,address Switch_Debounce,isa 1

	.dwfde $C$DW$CIE, Switch_Debounce
;----------------------------------------------------------------------
; 154 | uint32_t Switch_Debounce(void){                                        
; 155 | uint32_t in,old,time;                                                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_Debounce                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
Switch_Debounce:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("in")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg13 0]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("old")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("old")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg13 4]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("time")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("time")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg13 8]
	.dwpsn	file "../Switch.c",line 156,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 156 | time = 1000; // 10 ms                                                  
;----------------------------------------------------------------------
        MOV       A1, #1000             ; [DPU_3_PIPE] |156| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |156| 
	.dwpsn	file "../Switch.c",line 157,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 157 | old = Switch_Input();                                                  
;----------------------------------------------------------------------
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("Switch_Input")
	.dwattr $C$DW$23, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |157| 
        ; CALL OCCURS {Switch_Input }    ; [] |157| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |157| 
	.dwpsn	file "../Switch.c",line 158,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 158 | while(time){                                                           
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |158| 
        CBZ       A1, ||$C$L7||         ; [] 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |158| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 158
;*   Loop closing brace source line  : 167
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../Switch.c",line 159,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 159 | SysTick_Wait(DELAY10US); // 10us                                       
;----------------------------------------------------------------------
        MOVS      A1, #160              ; [DPU_3_PIPE] |159| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("SysTick_Wait")
	.dwattr $C$DW$24, DW_AT_TI_call
        BL        SysTick_Wait          ; [DPU_3_PIPE] |159| 
        ; CALL OCCURS {SysTick_Wait }    ; [] |159| 
	.dwpsn	file "../Switch.c",line 160,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 160 | in = Switch_Input();                                                   
;----------------------------------------------------------------------
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("Switch_Input")
	.dwattr $C$DW$25, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |160| 
        ; CALL OCCURS {Switch_Input }    ; [] |160| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |160| 
	.dwpsn	file "../Switch.c",line 161,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 161 | if(in == old){                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |161| 
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |161| 
        CMP       A1, A2                ; [DPU_3_PIPE] |161| 
        BNE       ||$C$L5||             ; [DPU_3_PIPE] |161| 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |161| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../Switch.c",line 162,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 162 | time--; // same value                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |162| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |162| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |162| 
	.dwpsn	file "../Switch.c",line 163,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 163 | }else{                                                                 
;----------------------------------------------------------------------
        B         ||$C$L6||             ; [DPU_3_PIPE] |163| 
        ; BRANCH OCCURS {||$C$L6||}      ; [] |163| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../Switch.c",line 164,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 164 | time = 1000;  // different                                             
;----------------------------------------------------------------------
        MOV       A1, #1000             ; [DPU_3_PIPE] |164| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |164| 
	.dwpsn	file "../Switch.c",line 165,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 165 | old = in;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |165| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |165| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
	.dwpsn	file "../Switch.c",line 158,column 3,is_stmt,isa 1
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |158| 
        CMP       A1, #0                ; [DPU_3_PIPE] |158| 
        BNE       ||$C$L4||             ; [DPU_3_PIPE] |158| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |158| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../Switch.c",line 168,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 168 | return old;                                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |168| 
	.dwpsn	file "../Switch.c",line 169,column 1,is_stmt,isa 1
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return
        POP       {A2, A3, A4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.clink
	.thumbfunc Switch_WaitForTouch
	.thumb
	.global	Switch_WaitForTouch

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("Switch_WaitForTouch")
	.dwattr $C$DW$27, DW_AT_low_pc(Switch_WaitForTouch)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("Switch_WaitForTouch")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_TI_begin_file("../Switch.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$27, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$27, DW_AT_decl_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../Switch.c",line 176,column 31,is_stmt,address Switch_WaitForTouch,isa 1

	.dwfde $C$DW$CIE, Switch_WaitForTouch
;----------------------------------------------------------------------
; 176 | void Switch_WaitForTouch(void){                                        
; 177 | // wait for release                                                    
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Switch_WaitForTouch                                        *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
Switch_WaitForTouch:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../Switch.c",line 178,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 178 | while(Switch_Input()){};                                               
;----------------------------------------------------------------------
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("Switch_Input")
	.dwattr $C$DW$28, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |178| 
        ; CALL OCCURS {Switch_Input }    ; [] |178| 
        CBZ       A1, ||$C$L9||         ; [] 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |178| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L8||
;*
;*   Loop source line                : 178
;*   Loop closing brace source line  : 178
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L8||:    
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("Switch_Input")
	.dwattr $C$DW$29, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |178| 
        ; CALL OCCURS {Switch_Input }    ; [] |178| 
        CMP       A1, #0                ; [DPU_3_PIPE] |178| 
        BNE       ||$C$L8||             ; [DPU_3_PIPE] |178| 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |178| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../Switch.c",line 179,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 179 | SysTick_Wait(DELAY10MS); // 10ms                                       
; 180 | // wait for touch                                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON26          ; [DPU_3_PIPE] |179| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("SysTick_Wait")
	.dwattr $C$DW$30, DW_AT_TI_call
        BL        SysTick_Wait          ; [DPU_3_PIPE] |179| 
        ; CALL OCCURS {SysTick_Wait }    ; [] |179| 
	.dwpsn	file "../Switch.c",line 181,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 181 | while(Switch_Input()==0){};                                            
;----------------------------------------------------------------------
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("Switch_Input")
	.dwattr $C$DW$31, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |181| 
        ; CALL OCCURS {Switch_Input }    ; [] |181| 
        CBNZ      A1, ||$C$L11||        ; [] 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |181| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L10||
;*
;*   Loop source line                : 181
;*   Loop closing brace source line  : 181
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L10||:    
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("Switch_Input")
	.dwattr $C$DW$32, DW_AT_TI_call
        BL        Switch_Input          ; [DPU_3_PIPE] |181| 
        ; CALL OCCURS {Switch_Input }    ; [] |181| 
        CMP       A1, #0                ; [DPU_3_PIPE] |181| 
        BEQ       ||$C$L10||            ; [DPU_3_PIPE] |181| 
        ; BRANCHCC OCCURS {||$C$L10||}   ; [] |181| 
;* --------------------------------------------------------------------------*
||$C$L11||:    
	.dwpsn	file "../Switch.c",line 182,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 182 | SysTick_Wait(800000); // 10ms                                          
;----------------------------------------------------------------------
        LDR       A1, $C$CON27          ; [DPU_3_PIPE] |182| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("SysTick_Wait")
	.dwattr $C$DW$33, DW_AT_TI_call
        BL        SysTick_Wait          ; [DPU_3_PIPE] |182| 
        ; CALL OCCURS {SysTick_Wait }    ; [] |182| 
	.dwpsn	file "../Switch.c",line 183,column 1,is_stmt,isa 1
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../Switch.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0xb7)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	1074783752,32
	.align	4
||$C$CON2||:	.bits	1074784776,32
	.align	4
||$C$CON3||:	.bits	1073759528,32
	.align	4
||$C$CON4||:	.bits	1073759532,32
	.align	4
||$C$CON5||:	.bits	1073759232,32
	.align	4
||$C$CON6||:	.bits	1073759264,32
	.align	4
||$C$CON7||:	.bits	1073759516,32
	.align	4
||$C$CON8||:	.bits	1073758336,32
	.align	4
||$C$CON9||:	.bits	1073759228,32
	.align	4
||$C$CON10||:	.bits	1073894688,32
	.align	4
||$C$CON11||:	.bits	1280262987,32
	.align	4
||$C$CON12||:	.bits	1073894692,32
	.align	4
||$C$CON13||:	.bits	1073894696,32
	.align	4
||$C$CON14||:	.bits	1073894700,32
	.align	4
||$C$CON15||:	.bits	1073894400,32
	.align	4
||$C$CON16||:	.bits	1073894432,32
	.align	4
||$C$CON17||:	.bits	1073894672,32
	.align	4
||$C$CON18||:	.bits	1073894684,32
	.align	4
||$C$CON19||:	.bits	1073893444,32
	.align	4
||$C$CON20||:	.bits	1073763328,32
	.align	4
||$C$CON21||:	.bits	1073763360,32
	.align	4
||$C$CON22||:	.bits	1073763624,32
	.align	4
||$C$CON23||:	.bits	1073763628,32
	.align	4
||$C$CON24||:	.bits	1073763612,32
	.align	4
||$C$CON25||:	.bits	1073762312,32
	.align	4
||$C$CON26||:	.bits	160000,32
	.align	4
||$C$CON27||:	.bits	800000,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	SysTick_Init
	.global	SysTick_Wait

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
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1d)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1c)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x1d)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1c)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1d)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x17)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x17)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x17)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x17)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x16)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x16)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x16)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x16)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1a)
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
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x21)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x17)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x17)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x20)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x16)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x16)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x20)
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
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("../Switch.c")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x01)
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

