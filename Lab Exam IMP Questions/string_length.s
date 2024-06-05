;Write a assembly language program to find the length of string
	AREA string_length, CODE, READONLY
	MOV R0, #0
	LDR R1, =STR
nextchar LDRB R2, [R1], #01
	CMP R2, #0
	BEQ STOP
	ADD R0, R0, #01
	B nextchar
STOP
	NOP
	NOP
STR DCB "Hello", 0
	END