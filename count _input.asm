include emu8086.inc
ORG 100h
PRINTN 'Input a number between 0 to 9:'

MOV AH,1
INT 21h 

PRINTN "" 
MOV CX,10

AND AL,3
CMP AL,
JE PRINT1
JMP PRINT2



PRINT1:
PRINTN "DIU CSE"
LOOP PRINT1
RET

PRINT2:
PRINTN "DIU CSE"

RET



