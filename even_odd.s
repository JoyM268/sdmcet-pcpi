;Program to check if the number is odd or even, if odd store 0xFFFFFFFF at RESULT else store 0x1 at RESULT
	AREA even_odd, CODE, READONLY
	LDR R0, =NUM1	;Load memory address of NUM1 into R0
	LDR R9, =RESULT	;Load memory address of RESULT into R9
	LDR R1, [R0]	;Load the value of NUM1 in R1
	
	MOVS R1, R1, LSR #01	;Shift right the value in R1 and store it back in R1 
	BCS oddnum	;Branch to oddnum if carry is generated
	MOV R8, #0X1	;Load value 0x1 in R8
	B evennum	;Branch to evennum
oddnum MOV R8, #0XFFFFFFFF	;Load value 0xFFFFFFFF in R9
evennum STR R8, [R9]	;Store the value in R8 at RESULT
	NOP
	NOP
	AREA data1, DATA, READWRITE
RESULT DCD 0X0
NUM1 DCD 0X0
	END