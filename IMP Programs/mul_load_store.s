;Multiple load store instructions
	AREA mul_load_store, CODE, READONLY
	LDR R0, =0x40000000
	MOV R1, #0x09
	MOV R2, #0x08
	MOV R3, #0x07
	STMIB R0!, {R1-R3}
	MOV R1, #0x0
	MOV R2, #0x0
	MOV R3, #0x0
	LDMDA R0!, {R1-R3}
	NOP
	NOP
	END