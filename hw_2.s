.global _start
_start:
	
	    MOV     R1, #0   //R1=0
        MOV     R2, #10  //R2=10
        MOV     R3, #0   //R3=0
        MOV     R4, #5   //R4=5

loop:
        SUBS    R5, R3, R4 //R5=R3-R4 =0
		// N=0 Z=1 C=0 V=0
        ADDLT   R0, R0, R2 //if N!=V, R0=R0+R2 =10
        ADDLT   R3, R3, #1 //if N!=V, R3=R3+1 =1
		
        BLT     loop //if N!=V, offset backwards by 5 instructions

        BL      . //offset is -4, which lands on itself
		
		
loop2:
        STR     LR, [SP, #-4]!

        MOV     R4, #15 //R4=15
        MOV     R5, #10 //R5=10

        ADD     R6, R5, R4 //R6=R5+R4
        SUBS    R5, R3, R4 //R5=R3-R4
		// N Z C V
        B       loop2