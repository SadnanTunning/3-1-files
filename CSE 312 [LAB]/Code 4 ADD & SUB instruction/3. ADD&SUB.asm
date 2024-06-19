.MODEL SMALL   ;DEFINES THE SIZE OF THE MEMORY MODEL
.STACK 100H    ;DEFINES THE SIZE OF STACK
.DATA          ;WHERE ALL VARIABLES WILL BE DECLARED
.CODE          ;WHERE ALL FUNCTIONS AND PROCEDURES DECLARED

    MAIN PROC
       
       ;--------ADD INSTRUCTION---------- 
       ;ADD DEST, SRC  -> DEST=DEST+SRC
  
       MOV AX, 1234H
       MOV BX, 0015H
       ADD AX, BX       ;REG,REG 
       
       MOV CX, 1111H
       MOV [1234H], 05H
       ADD CX, [1234H]  ;REG,MEM 
       
       MOV DX, 4545H
       ADD DX, 0001H    ;REG,IMM
       
       ;--------SUB INSTRUCTION---------- 
       ;SUB DEST, SRC  -> DEST=DEST-SRC
       
       MOV AX, 1234H
       MOV BX, 0015H
       SUB AX, BX       ;REG,REG 
       
       MOV CX, 1111H
       MOV [1234H], 05H
       SUB CX, [1234H]  ;REG,MEM 
       
       MOV DX, 4545H
       SUB DX, 0001H    ;REG,IMM
       
       MOV AH, 4CH
       INT 21H      ;RETURNS CONTROL TO THE OS AFTER EXECUTION
    
    MAIN ENDP   ;ENDS PROCEDURE
    
                
END MAIN        ;PROGRAM TERMINATION
    
    

    