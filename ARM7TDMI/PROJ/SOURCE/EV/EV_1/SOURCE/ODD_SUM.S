   AREA TEAM13,CODE,READONLY
	   ENTRY
	   LDR R4,=0X40000000
	   MOV R0,#0X1;SUM
	   MOV R1,#0X0;COUNTER
	   MOV R2,#0X1;I VALUE
	   
LOOP   STRB R2,[R4],#1
	   ADDS R2,R2,#2
	   ADDS R0,R0,R2
	   ADDS R1,R1,#1
	   CMP R1,#10
	   BNE LOOP
STOP   B STOP
	   END
		   ;SPACE 44BYTES
		   ;TIME 15.336