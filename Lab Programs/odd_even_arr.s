;Program to check how many odd and even numbers are in the array
	AREA odd_even_arr, CODE, READONLY
	LDR R0, =ARR1
	LDR R9, =EVEN
	LDR R10, =ODD
	MOV R1, #05
	MOV R2, #00
	MOV R3, #00
nextele LDR R4, [R0], #04
	MOVS R4, R4, LSR #1
	BCS odd
	ADD R2, R2, #01
	B even
odd ADD R3, R3, #01
even SUBS R1, R1, #01
	BNE nextele
	STR R2, [R9]
	STR R3, [R10]
	NOP
	NOP
	AREA data1, DATA, READWRITE
EVEN DCD 0x0
ODD DCD 0x0
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
	END