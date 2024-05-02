;Program to find 2's complement of a number
    AREA complement, CODE, READONLY
	LDR R0, =NUM1
	LDR R9, =RESULT
	LDR R1, [R0]
	MVN R2, R1
	ADD R2, R2, #01
	STR R2, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
NUM1 DCD 0x0
	END