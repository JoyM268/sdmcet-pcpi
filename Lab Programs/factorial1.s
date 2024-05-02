;Program to find factorial of a given number through memory location
	AREA factorial1, CODE, READONLY
	LDR R0, =NUM1	; Load the memory address of NUM1 into R0
	LDR R1, [R0]	;Load the value stored at the memory address in R0 into R1
	MOV R2, R1	;Copy the value from R1 to R2
	LDR R9, =RESULT	;Load the memory address of RESULT into R9
	
	CMP R1, #0	;Compare if the value in R1 is 0
	BEQ STOP1	;Branch to STOP1 if R1 equals 0
	CMP R1, #1	;Compare if the value in R1 is 1
	BEQ STOP2	;Branch to STOP2 if R1 equals 1
	
nextval
	SUBS R1, R1, #01	;Subtract 1 from the value in R1
	CMP R1, #01	;Compare if the value in R1 is 1
	BEQ STOP2	;Branch to STOP2 if R1 becomes 1
	MULNE R3, R2, R1	;Multiply R2 and R1 and store in R3
	MOV R2, R3	;Move the value in R3 to R2
	BNE nextval	;Branch to nextval if Z = 0
	
STOP1
	MOV R2, #01	;Move the value 1 into R2

STOP2
	STR R2, [R9]	;Store the contents of R2 into memory address stored in R9
	NOP
	NOP

	AREA data1, DATA, READWRITE
RESULT DCD 0X0 
NUM1 DCD 0x0
	END