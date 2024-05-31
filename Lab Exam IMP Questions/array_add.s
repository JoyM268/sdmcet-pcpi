;Program to find sum of n numbers in the array
	AREA array_add, CODE, READONLY
	LDR R0, =ARR1
	LDR R9, =RESULT
	MOV R1, #00
	MOV R2, #05
nextele LDR R3, [R0], #04
	ADD R1, R1, R3
	SUBS R2, R2, #01
	BNE nextele
	STR R1, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
	END