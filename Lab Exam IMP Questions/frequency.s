;Write a assembly language program to find the frquency of a specified character in a given string
    AREA frequency, CODE, READONLY
	LDR R0, =STR1	;Load memory addr of string in R0
	LDR R1, =CHAR	;Load memory addr of char in R1
	MOV R2, #05	;Length of string
	MOV R3, #00	;Intial frequency count
	
	LDRB R4, [R1]	;Load character in R4
nextchar	LDRB R5, [R0], #01	
	CMP R5, R4	
	BNE update
	ADD R3, R3, #01
update	SUBS R2, R2, #01
	BNE nextchar
	LDR R9, =RESULT
	STR R3, [R9]
	NOP
	NOP
STR1 DCB "Hello", 0
CHAR DCB "l", 0
	AREA data1, DATA, READWRITE
RESULT DCD 0x0
	END