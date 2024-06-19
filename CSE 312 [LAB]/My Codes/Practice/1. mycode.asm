.MODEL SMALL
.STACK 100H
.DATA

   A DW 3          ; data input
   B DW 2
   X DW 1

.CODE

  MAIN PROC 
    MOV AX,@DATA       ;shifting data from data to code segment
    MOV DS,AX
    
    MOV AX,B
    NEG AX
    ADD AX,A
    ADD AX,A
    MOV X,AX
    
   MAIN ENDP             ;X=(-B+2A)
  
  END MAIN