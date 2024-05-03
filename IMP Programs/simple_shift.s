;Program to demonstrate use of simple shift	logical operations
    AREA simple_shift, CODE, READONLY
	MOV R0, #0x11
	MOVS R1, R0, LSL #01
	MOVS R1, R1, LSL #01
	NOP
	NOP
	END