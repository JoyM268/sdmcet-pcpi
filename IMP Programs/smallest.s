;Program to find smallest element in the array
	AREA smallest, CODE, READONLY
	LDR R0, =ARR1
	LDR R9, =RESULT
	MOV R1, #04
	LDR R2, [R0]
nextele	LDR R3, [R0, #04]!
	CMP R2, R3
	BLT lesser
	MOV R2, R3
lesser SUBS R1, R1, #01
	BNE nextele
	STR R2, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
	END