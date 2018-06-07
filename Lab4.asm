                  org 100h

.MODEL SMALL
.STACK 100h
.DATA
.CODE

   MOV CX,5

  AA:
    



    
    MOV AH,1
    INT 21h
    
    MOV BL,AL 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    
    CMP BL,91
    JNBE HIGHER
        
        
     
     ADD BL,20H
   
   MOV DL,BL
     
    
   
   JMP DISPLAY
    
      
   

HIGHER:
     SUB BL,20H
   
   MOV DL,BL 
   
  
   
DISPLAY:
         
         
 INT 21H  

  MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
 LOOP AA   
 RET