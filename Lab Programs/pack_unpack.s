;Program to unpack(disassemble) a given number
	AREA pack_unpack, CODE, READONLY
	LDR R0, =NUM1
	LDR R9, =RESULT
	LDR R1, [R0]
	MOV R2, R1
	MOV R2, R2, LSR #04
	MOV R2, R2, LSL #08
	AND R1, R1, #0x0F
	ORR R2, R2, R1
	STR R2, [R9]
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
NUM1 DCD 0x0
	END