;Program to sub two 32-bit numbers
	AREA sub32, CODE, READONLY
	LDR R0, =NUM1
	LDR R1, =NUM2
	LDR R9, =RESULT
	LDR R2, [R0]
	LDR R3, [R1]
	SUB R4, R2, R3
	STR R4, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
NUM1 DCD 0x0
NUM2 DCD 0x0
	END