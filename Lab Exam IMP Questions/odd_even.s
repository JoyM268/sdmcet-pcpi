;Program to store 1 if the given number is odd, otherwise store 0xFFFFFFFF
    AREA odd_even, CODE, READONLY
	LDR R0, =NUM1
	LDR R9, =RESULT
	LDR R1, [R0]
	MOVS R1, R1, LSR #01
	BCS odd
	MOV R2, #0xFFFFFFFF
	B even
odd	MOV R2, #01
even STR R2, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
NUM1 DCD 0x0
	END