.MODEL SMALL   ;DEFINES THE SIZE OF THE MEMORY MODEL
.STACK 100H    ;DEFINES THE SIZE OF STACK
.DATA          ;WHERE ALL VARIABLES WILL BE DECLARED 

    VAR1 DW 1212H
    
.CODE          ;WHERE ALL FUNCTIONS AND PROCEDURES DECLARED

    MAIN PROC 
       
       ;--------------INC DEC------------
       ;SYNTAX: INC OPERAND 
       ;OPERAND CAN BE EITHER MEM OR REG
       ;IF YOU NEED TO INC/DEC A VAR, TEMPORARILY STORE IT IN A REG/MEM 
        
       MOV AX, @DATA
       MOV DS, AX
       
       MOV BX, VAR1
       INC BX
       MOV VAR1, BX
       
       MOV AX, 1234H
       INC AX           ;OPERAND->REG
       DEC AX
       
       MOV [0101], 12H
       MOV BX, [0101]
       INC [0101]       ;OPERAND->MEM
       MOV CX, [0101] 
      
       
       MOV AH, 4CH
       INT 21H      ;RETURNS CONTROL TO THE OS AFTER EXECUTION
    
    MAIN ENDP   ;ENDS PROCEDURE
    
                
END MAIN        ;PROGRAM TERMINATION
    
    

    