;Program to find square of a number
	AREA square, CODE, READONLY
	LDR R0, =NUM1
	LDR R9, =RESULT
	LDR R1, [R0]
	
	;MUL R2, R1, R1
	;STR R2, [R9]
	
	MOV R2, #0
	MOV R3, #0

next ADD R3, R3, R1
	ADD R2, R2, #01
	CMP R2, R1
	BNE next

	STR R3, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
NUM1 DCD 0x0
	END