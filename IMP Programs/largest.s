;Program to find largest element in the array
	AREA largest, CODE, READONLY
	LDR R0, =ARR1
	LDR R9, =RESULT
	MOV R1, #04
	LDR R2, [R0]
nextele	LDR R3, [R0, #04]!
	CMP R2, R3
	BGT greater
	MOV R2, R3
greater	SUBS R1, R1, #01
	BNE nextele
	STR R2, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
	END