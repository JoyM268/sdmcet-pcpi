;Find number of 0's and 1's in given number
	AREA count_0s_1s, CODE, READONLY
	LDR R0, =NUM1	;Load memory address of NUM1 into R0
	LDR R1, =NUMZEROS	;Load memory address of NUMZEROS into R1
	LDR R2, =NUMONES	;Load memory address of NUMONES into R2
	MOV R3, #0	;Initialize zero count(R3) to 0
	MOV R4, #0	;Initialize one count(R4) to 0
	MOV R5, #32	;Load value 32 into R5
	LDR R6, [R0]	;Load the value of NUM1 into R6
nextbit 
	MOVS R6, R6, LSL #01	;Left shift the value in R6 by 1
	BCS updateone	;Branch to updateone if carry is generated
	ADD R3, R3, #01	;Increment R3 if no carry generated
	B next1	;Branch to next1

updateone
	ADD R4, R4, #01	;Increment R4 if carry generated
	
next1 SUBS R5, R5, #01	;Decrement R5 by 1
	BNE nextbit	;Branch to nextbit if R5 not equal to 0
	STR R3, [R1]	;Store the contents of R3 at memory address stored in R1
	STR R4, [R2]	;Store the contents of R4 at memory address stored in R2
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
NUMZEROS DCD 0x0
NUMONES DCD 0x0
NUM1 DCD 0x0
	END