;Program to check if the given number is negative or positive, if negative store 0xFFFFFFFF at RESULT else positive 0x1 at RESULT
	AREA pos_neg, CODE, READONLY
	LDR R0, =NUM1
	LDR R9, =RESULT
	LDR R1, [R0]
	MOVS R1, R1, LSL #01
	BCS negative
	MOV R2, #0x1
	B positive
negative MOV R2, #0xFFFFFFFF
positive STR R2, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
NUM1 DCD 0x0
RESULT DCD 0x0
	END