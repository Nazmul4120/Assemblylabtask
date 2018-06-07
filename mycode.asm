
org 100h


MOV AH,1
INT 21h
MOV BL,AL

CMP BL,60h
JL SML
JNL CAP
                                             


SML:
  CMP BL,5Bh              
  JNL RETURNER 
  
  MOV DL,BL
  MOV AH,2
  MOV CX,5 
  
     CMP DL,5Ah
     JE  L1
      CMP DL,7Ah
      JE L2 
  
  JMP PRINT_FORWARD
  JMP PRINT_BACKWARD
  END
  
CAP:
   CMP BL,7Bh
   JGE RETURN 
   
   MOV DL,BL
   MOV AH,2
   MOV CX,5 
   
     CMP DL,61h
     JE  L3  
     CMP DL,41h
     JE  L4         

   JMP PRINT_FORWARD
   JMP PRINT_BACKWARD
   END 
   
PRINT_FORWARD:  
    INT 21H
    JMP INCREMENT
    DEC CX 
    JNZ PRINT_FORWARD 
    
    MOV DL,0Ah
    INT 21h
    MOV DL,0Dh
    INT 21h
    
    
    JMP CAP
    
    
    
    
    
    
INCREMENT:    
    CMP DL,5Ah
    JE L1
 
    CMP DL,7Ah
    JE L2  
    
    INC DL 
    JMP  PRINT_FORWARD
    
    
     
    
PRINT_BACKWARD: 
    INT 21H
    JMP DECREMENT
    DEC CX 
    JNZ PRINT_BACKWARD 
    JMP RETURNER
    
    
DECREMENT:
    CMP DL,61h
    JE L3
 
    CMP DL,41h
    JE L4  
    
    DEC DL 
    
    JMP  PRINT_BACKWARD 
    


L1:
 MOV DL,61h
 JMP PRINT_FORWARD
 
L2:
 MOV DL,41h
 JMP PRINT_FORWARD 
 
L3:
  MOV DL,5Ah
 JMP PRINT_BACKWARD

L4:
  MOV DL,7Ah
 JMP PRINT_BACKWARD  
    
  
 
RETURNER:
    END
   
     

ret




