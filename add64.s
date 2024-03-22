;Program to add two 64 bit numbers stored in memory location

	AREA add64, CODE, READONLY
	LDR R0, =LNUM1	;Memory address of LNUM1 stored in R0
	LDR R1, =UNUM1	;Memory address of UNUM1 stored in R1
	LDR R2, =LNUM2	;Memory address of LNUM2 stored in R2
	LDR R3, =UNUM2	;Memory address of UNUM2 stored in R3
	LDR R10, =LRESULT	;Memory address of LRESULT stored in R10
	LDR R11, =URESULT	;Memory address of URESULT stored in R11
	
	LDR R4, [R0]	;Value of LNUM1 stored in R4
	LDR R5, [R1]	;Value of UNUM1 stored in R5
	LDR R6, [R2]	;Value of LNUM2 stored in R6
	LDR R7, [R3]	;Value of UNUM2 stored in R7
	
	ADDS R8, R4, R6	;Add the values in R4 and R6 and store it in R8
	ADC R9, R5, R7	;Add the values in R5 and R7 and store it in R9
	STR R8, [R10]	;Store the value in R8 stored at memory location stored in R10
	STR R9, [R11]	;Store the value in R9 stored at memory location stored in R11
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
LRESULT DCD 0X0
URESULT DCD 0X0
LNUM1 DCD 0X0
UNUM1 DCD 0X0
LNUM2 DCD 0X0
UNUM2 DCD 0X0
	END