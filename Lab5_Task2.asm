
org 100h


MOV AH,1
INT 21h
MOV BL,AL 
  MOV AH,2
  MOV DL,0Ah
    INT 21h
    MOV DL,0Dh
    INT 21h

   MOV DL,BL
   MOV CX,5  
   
      CMP DL,5Ah
      JE  L1
      CMP DL,7Ah
      JE L2
      
      CMP DL,61h
      JGE SMALL
LARGE:
   ADD DL,20h
   JMP PRINT_FORWARD
SMALL:
    SUB DL,20h
             
      
     
PRINT_FORWARD:
     
     CMP DL,5Ah
     JE  L1
      CMP DL,7Ah
      JE L2 
     INC DL 
     INT 21h
     DEC CX
     CMP CX,0
     JNE PRINT_FORWARD
     
     
    MOV AH,2
    MOV DL,0Ah
    INT 21h
    MOV DL,0Dh
    INT 21h
    
    
    
      MOV CX,5
      MOV DL,BL
     
    CMP DL,61h
     JE  L3  
     CMP DL,41h
     JE  L4   
      
      CMP DL,61h
      JGE SMALL1
LARGE1:
   ADD DL,20h
   JMP PRINT_BACKWARD
SMALL1:
    SUB DL,20h
    
    
      
     
PRINT_BACKWARD:
      
      CMP DL,61h
     JE  L3  
     CMP DL,41h
     JE  L4       
     DEC DL
     INT 21h
     DEC CX
     CMP CX,0
     JNE PRINT_BACKWARD
     JMP RETURN 
                                              







   
L1:
 MOV DL,60h
 JMP PRINT_FORWARD
 
L2:
 MOV DL,40h
 JMP PRINT_FORWARD 
 
L3:
  MOV DL,5Bh
 JMP PRINT_BACKWARD

L4:
  MOV DL,7Bh
 JMP PRINT_BACKWARD  
 
 
 RETURN:     

ret




