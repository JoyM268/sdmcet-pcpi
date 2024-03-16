;Program to add two 8-bit numbers
;num1 is loaded in R1 register
;num2 is loaded in R2 register
;Result in R5 register
	AREA add8, CODE, READONLY
	MOV R1, #02	;Load R1 with num1
	MOV R2, #03	;Load R2 with num2
	
	ADDS R5, R1, R2	;num1 + num2 and result stored in R5
	NOP	;No operation, it uses 1 nanosecond
	NOP
	END