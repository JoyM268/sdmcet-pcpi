AREA add32, CODE, READONLY
	LDR R0, =NUM1	;Load memory address of NUM1 into R0
	LDR R1, = NUM2	;Load memory address of NUM2 into R1
	LDR R9, =RESULT	;Load memory address of RESULT into R9
	
	LDR R3, [R0]	;Load the value at memory location stored in R0 into R3
	LDR R4, [R1]	;Load the value at memory loaction stored in R1 into R4
	
	ADDS R5, R3, R4	;Add the values in register R3 and R4 and store into R5
	
	STR R5, [R9]	;Store the value in R5 at the memory location stored in R9

NUM1 DCD 0X1111	;Define constant NUM1 with hexadecimal value 1111
NUM2 DCD 0X2222	;Define constant NUM1 with hexadecimal value 2222
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0X0	;Define constant NUM1 with hexadecimal value 0
	END