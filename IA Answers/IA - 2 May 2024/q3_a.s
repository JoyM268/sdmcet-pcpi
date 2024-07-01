;Write an ALP to reverse the given string "ARM Microcontroller",0.
	AREA q3_a, CODE, READONLY
	MOV R0, #19
	LDR R1, =STR1
	LDR R2, =STR2
	ADD R1, R1, #18
nextchar LDRB R3, [R1], #-1
	STRB R3, [R2], #01
	SUBS R0, R0, #01
	BNE nextchar
	NOP
	NOP
STR1 DCB "ARM Microcontroller", 0
	AREA data1, DATA, READWRITE
STR2 DCB 0x0
	END