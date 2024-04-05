;Program to load 0X11 into R0 and shift left one time, again left shift another time and finally load it in R1 register
	AREA simple_shift, CODE, READONLY
	MOV R0, #0x11	;Move immediate value 0x11 into register R0
	MOVS R1, R0, LSL #01	;Move the contents of R0 left shifted by 1 bit into R1
	MOVS R1, R1, LSL #01	;Move the contents of R1 left shifted by 1 bit into R1
	NOP
	NOP
	END