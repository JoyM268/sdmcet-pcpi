;Program for counting number of 0's and 1's in a given number
	AREA count_0s_1s, CODE, READONLY
	LDR R0, =NUM1
	LDR R1, [R0]
	MOV R2, #32
	MOV R3, #00
	MOV R4, #00
	LDR R9, =NUMZEROS
	LDR R10, =NUMONES
nextbit MOVS R1, R1, LSL #01
	BCS updateone
	ADD R3, R3, #01
	B updatezero
updateone ADD R4, R4, #01
updatezero SUBS R2, R2, #1
	BNE nextbit
	STR R3, [R9]
	STR R4, [R10]
	NOP
	NOP
	AREA data1, DATA, READWRITE
NUM1 DCD 0x0
NUMZEROS DCD 0x0
NUMONES DCD 0x0
	END