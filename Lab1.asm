include emu8086.inc
org 100h

MOV AH,1
INT 21h
  
MOV CL,AL
INT 21h
MOV BL,AL

PRINTN ' '
PRINT 'THE SUM OF ' 

MOV DL,CL

MOV AH,2
INT 21h 

PRINT  ' AND '
MOV DL,BL
INT 21h 

PRINT ' IS '
ADD CL,BL
SUB CL,30H
MOV DL,CL
MOV AH,2
INT 21h

ret