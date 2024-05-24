;Program to reverse a given string
	AREA reverse_string, CODE, READONLY
	MOV R0, #05
	LDR R1, =STR1
	LDR R2, =STR2
	ADD R1, R1, #04
nextchar LDRB R3, [R1], #-1
	STRB R3, [R2], #01
	SUBS R0, R0, #01
	BNE nextchar
	NOP
	NOP
STR1 DCB "Hello", 0
	AREA data1, DATA, READWRITE
STR2 DCB 0x0
	END