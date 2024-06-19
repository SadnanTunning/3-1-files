.MODEL SMALL
.STACK 100H
.DATA

   A DW 8H          ; data input
   B DW 6H
   C DW 1FH

.CODE

  MAIN PROC 
    MOV AX,@DATA       ;shifting data from data to code segment
    MOV DS,AX
    
    MOV AX,A
    ADD AX,B
 
    MOV BX, B
    MOV CX, C
    XCHG BX,CX
    
    MOV DX, C
    NEG C
    
   MAIN ENDP
  
  END MAIN