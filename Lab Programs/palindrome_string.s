;Program to check if the given string is palindrome or not, store 0xFFFFFFFF in R9 if palindrome else store 0x1
	AREA palindrome_string, CODE, READONLY
	MOV R0, #05
	LDR R1, =STR1
	LDR R2, =STR2
	
	ADD R1, R1, #04
	
nextchar1 LDRB R3, [R1], #-1
	STRB R3, [R2], #01
	SUBS R0, R0, #01
	BNE nextchar1
	
	LDR R1, =STR1
	LDR R2, =STR2
	MOV R0, #05
	
nextchar2
	LDRB R4, [R1], #01
	LDRB R5, [R2], #01
	CMP R4, R5
	BNE STOP
	SUBS R0, R0, #01
	BNE nextchar2
	MOV R9, #0xFFFFFFFF
	B end1
STOP MOV R9, #0x1
end1 NOP
	NOP
	
STR1 DCB "ACBCA", 0

	AREA data1, DATA, READWRITE
STR2 DCB 0x0
	END