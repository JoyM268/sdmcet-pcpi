;Multiplication table upto 10 for a given number
	AREA mul_table, CODE, READONLY
	LDR R0, =NUM1
	LDR R1, =RESULTARR
	LDR R2, [R0]
	MOV R3, #01
nextval MUL R4, R2, R3
	STR R4, [R1], #04
	ADD R3, R3, #01
	CMP R3, #10
	BLE nextval
	NOP
	NOP
	AREA data1, DATA, READWRITE
NUM1 DCD 0x0
RESULTARR DCD 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	END