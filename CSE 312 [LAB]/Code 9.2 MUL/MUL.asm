.MODEL SMALL
.STACK 100H

.DATA
    VAL1 DW 1111H
    VAL2 DW 2222H

.CODE
    ;where all procedures stay
    
    MAIN PROC  ;MAIN procedure begins 
        
        MOV AX, @DATA
        MOV DS, AX
         
         MOV AL, 10H
         MOV BL, 05H
         MUL BL
         
         MOV AX, 1010H
         MOV BX, 2020H
         MUL BX         
         
         MOV AX, VAL1
         MOV BX, VAL2
         MUL BX
         
         MOV AX, 0005H
         MOV [0300H], 0200H
         MUL [0300H]
         
         MOV AH, 4CH ;function to return space taken in the system to the OS
         INT 21H     ;generates an interrupt
    
    MAIN ENDP  ;MAIN procedure ends

END MAIN