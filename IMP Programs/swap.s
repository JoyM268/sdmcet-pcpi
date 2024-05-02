;Program to swap register contents without temporary register using XOR
	AREA swap, CODE, READONLY
	MOV R0, #03
	MOV R1, #05
	EOR R0, R0, R1
	EOR R1, R0, R1
	EOR R0, R0, R1
	NOP
	NOP
	END