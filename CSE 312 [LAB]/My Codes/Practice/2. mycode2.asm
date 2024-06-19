.MODEL SMALL
.STACK 100H
.DATA

   A DW 2010          ; data input
   B DW 1106
   C DW 2010
   D DW 1972

.CODE

  MAIN PROC 
    MOV AX,@DATA       ;shifting data from data to code segment
    MOV DS,AX
    
    MOV AX,A
    MOV DX,D
    MOV AX,DX
 
    MOV CX,C
    INC CX
    
    MOV AX,A
    MOV BX,B
    ADD BX,AX
    
   MAIN ENDP
  
  END MAIN