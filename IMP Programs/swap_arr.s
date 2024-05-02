;Program to	exchange contents of two array
    AREA swap_arr, CODE, READONLY
	LDR R0, =ARR1
	LDR R1, =ARR2
	MOV R2, #05

nextele	LDR R3, [R0]
	LDR R4, [R1]
	STR R3, [R1], #04
	STR R4, [R0], #04
	SUBS R2, R2, #01
	BNE nextele

	NOP
	NOP
	AREA data1, DATA, READWRITE
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
ARR2 DCD 0x0, 0x0, 0x0, 0x0, 0x0
	END