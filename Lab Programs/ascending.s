;Write a assembly language program to arrange given 32-bit numbers in ascending order
	AREA ascending, CODE, READONLY
	LDR R0, =ARR1
	LDR R1, =ARR2
	MOV R2, #05
	
nextele	LDR R3, [R0], #04
	STR R3, [R1], #04
	SUBS R2, R2, #01
	BNE nextele
	
loop2	LDR R0, =ARR2	
	MOV R5, #04
	MOV R6, #00
loop1	LDR R3, [R0], #04
	LDR R4, [R0]
	CMP R3, R4
	BLT nextcheck
	STR R3, [R0], #-04
	STR R4, [R0], #04
	MOV R6, #01
nextcheck	SUBS R5, R5, #01
	BNE loop1
	CMP R6, #01
	BEQ loop2
	
	NOP
	NOP
ARR1 DCD 0x5, 0x4, 0x3, 0x2, 0x1
	
	AREA data1, DATA, READWRITE
ARR2 DCD 0x0
	END