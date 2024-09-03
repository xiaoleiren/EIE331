;/*****************************************************************************/
;/* OSasm.s: low-level OS commands, written in assembly                       */
;/*****************************************************************************/
;Jonathan Valvano/Andreas Gerstlauer, OS Lab 5 solution, 2/28/16


        AREA |.text|, CODE, READONLY, ALIGN=2
        THUMB
        REQUIRE8
        PRESERVE8

		EXPORT	OS_Id
        EXPORT  OS_Sleep
		EXPORT	OS_Kill
		EXPORT	OS_Time
		EXPORT	OS_AddThread
			
OS_Id
	SVC		#0
	BX		LR

OS_Kill
	SVC		#1
	BX		LR

OS_Sleep
	SVC		#2
	BX		LR

OS_Time
	SVC		#3
	BX		LR

OS_AddThread
	SVC		#4
	BX		LR


    ALIGN
    END
