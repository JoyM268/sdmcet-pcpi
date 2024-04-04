;Given a number in register R1=0x11 find 2's complement of it
	AREA twos_comp, CODE, READONLY
	LDR R1, =0x11	;Load the value 0x11 into register R1	
	MVN R2, R1	;Store the 1's complement of value stored in R1 into R2
	ADDS R2, R2, #01	;Add 1 to 1's complement stored in R2, to get 2's complement
	NOP
	NOP
	END