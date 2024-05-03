;Multiplication table upto 10 for a given number
;Assuming the given number is 8bit
	AREA mul_table, CODE, READONLY
	LDR R0, =NUM	;Load the memory address of NUM in R0
	LDRB R1, [R0]	;Load the byte stored at address in R0 into R1
	LDR R9, =RESULTARR	;Load the memory address of RESULTARR into R9
	
	CMP R1, #0	;Check if R1 contains 0 
	BEQ STOP	;If R1=0 then branch to STOP
	
	MOV R2, #01	;Initialize R2(count) with 01
	
nextval MUL R3, R1, R2	;Multiply the values in R1 and R2 and store in R3
	STRH R3, [R9], #02	;Store the halfword value in R3 to the memory location pointed by R9 and incr the address in R9 by 2 bytes
	ADDS R2, R2, #01	;Incr count by 1
	CMP R2, #10	;check if R2 contains 10
	BLE nextval	;If the value in R2 is less than or equal to 10, branch to nextval
STOP
	NOP
	NOP
	AREA data1, DATA, READWRITE
NUM DCB 0x0
RESULTARR DCW 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
	END