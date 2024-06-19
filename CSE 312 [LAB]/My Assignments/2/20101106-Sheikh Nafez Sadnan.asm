.MODEL SMALL
.STACK 100H
.DATA

   A DW 1106H          ; data input
   B DW 1101H

.CODE

  MAIN PROC 
    MOV AX,@DATA       ; shifting data from data segment to code segment
    MOV DS,AX
    
    MOV AX, A          ; initializing A,B to AX,BX respectively
    MOV BX, B  
    
    MOV CX, AX
    MOV DX, BX         ; mov operation
    
    ADD CX, DX         ; addition operation
    SUB DX, CX         ; subtraction operation
    
    INC AX             ; increament operation
    DEC BX             ; decrement operation
    NEG DX             ; negate operation
    
    MOV AH,4CH
    INT 21H
    
   MAIN ENDP
  
  END MAIN