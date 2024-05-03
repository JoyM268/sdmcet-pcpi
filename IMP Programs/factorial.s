    AREA factorial, CODE, READONLY
    LDR R0, =NUM1
    LDR R9, =RESULT
    LDR R1, [R0]
    MOV R2, R1
    
    CMP R1, #01
    BEQ STOP1
    CMP R2, #00
    BEQ STOP2

    SUB R2, R2, #01
nextval MUL R3, R2, R1
    MOV R1, R3
    SUBS R2, R2, #01
    CMP R2, #01
    BGT nextval
    
    B STOP1
STOP2 MOV R1, #01
STOP1 STR R1, [R9]
    NOP
    NOP
    AREA data1, DATA, READWRITE
NUM1 DCD 0x0
RESULT DCD 0x0
    END