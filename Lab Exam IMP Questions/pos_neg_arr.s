;Program to check how many negative and positive numbers are in the array 	
    AREA pos_neg_arr, CODE, READONLY
	LDR R0, =ARR1
	MOV R1, #05
	MOV R2, #00
	MOV R3, #00
	LDR R9, =POSITIVE
	LDR R10, =NEGATIVE
	
nextele LDR R4, [R0], #04
	MOVS R4, R4, LSL #01
	BCS updateneg
	ADD R2, R2, #01
	B updatepos
updateneg ADD R3, R3, #01
updatepos SUBS R1, R1, #01
	BNE nextele
	
	STR R2, [R9]
	STR R3, [R10]
	NOP
	NOP
	AREA data1, DATA, READWRITE
ARR1 DCD 0x0, 0x0, 0x0, 0x0, 0x0
POSITIVE DCD 0x0
NEGATIVE DCD 0x0
	END