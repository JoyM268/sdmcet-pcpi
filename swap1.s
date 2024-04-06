;Program to swap two numbers stored in register R1 and memory location 40000000H containing 3 using SWP

	AREA swap1, CODE, READONLY
	LDR R1, =06	;Load immediate value 06 into register R1
	LDR R0, =NUM1	;Load the memory address of NUM1 into register R0
	SWP R1, R1, [R0]	;Swap the value in register R1 with the value stored at the memory address in R0
	
	NOP
	NOP

	AREA data1, DATA, READWRITE
NUM1 DCD 0X0 
	END