.MODEL SMALL
.STACK 100H
.DATA
    ;where all variables will be declared
.CODE
    ;where all procedures stay
    
    MAIN PROC  ;MAIN procedure begins
         
         ;statement
         
         MOV AH, 4CH ;function to return space taken in the system to the OS
         INT 21H     ;generates an interrupt
    
    MAIN ENDP  ;MAIN procedure ends

END MAIN