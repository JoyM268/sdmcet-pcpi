;Program to sub two 16-bit numbers
	AREA sub16, CODE, READONLY
	LDR R0, =NUM1
	LDR R1, =NUM2
	LDR R9, =RESULT
	LDRH R2, [R0]
	LDRH R3, [R1]
	SUB R4, R2, R3
	STRH R4, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCW 0x0
NUM1 DCW 0x0
NUM2 DCW 0x0
	END