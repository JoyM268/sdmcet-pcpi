;Write an ALP to transfer a bloack of 10 bytes from code memory to data memory
	AREA q1_a, CODE, READONLY
	LDR R0, =CDATA
	LDR R1, =DDATA
	LDMIA R0, {R2-R11}
	STMIA R1, {R2-R11}
	NOP
	NOP
CDATA DCD 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA
	AREA data1, DATA, READWRITE
DDATA DCD 0x0
	END