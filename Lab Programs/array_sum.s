;Program to find sum of all elements in the array
	AREA array_sum, CODE, READONLY
	LDR R0, =ARR1	;Load memory address of ARR1 into R0
	MOV R1, #0	;Initialize sum(R1) with 0 
	MOV	 R2, #05	;Store the number of elements(5) into R2

nextele LDR R3, [R0], #04	;Load the value stored at memory address in R0 into R3 and increment R0 by 4
	ADDS R1, R1, R3	;Add the value in R3 aand R1 and store in R1
	SUBS R2, R2, #01	;Subtract 1 from count(R2)
	BNE nextele	;Branch to nextele if count(R2) is not 0
	
	LDR R9, =RESULT	;Load memory address of Result in R9
	STR R1, [R9]	;Store the contents of R1(sum) into memory address stored in R9
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
	END