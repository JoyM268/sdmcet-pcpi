;Program to swap register contents without temporary register using XOR
;NUM1 is loaded into R0
;NUM2 is loaded into R1
;Finally the values in R0 and R1 are swapped

	AREA swap_xor, CODE, READONLY
	MOV R0, #06	;Move immediate value 06 into register R0
	MOV R1, #08	;Move immediate value 08 into register R1
	EOR R0, R0, R1	;XOR R0 with R1 and store result in R0
	EOR R1, R0, R1	;XOR R0 with R1 and store result in R1
	EOR R0, R0, R1	;XOR R0 with R1 and store result in R0
	NOP
	NOP
	END