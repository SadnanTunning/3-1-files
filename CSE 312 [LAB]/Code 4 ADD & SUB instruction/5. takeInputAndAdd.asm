.MODEL SMALL   ;DEFINES THE SIZE OF THE MEMORY MODEL
.STACK 100H    ;DEFINES THE SIZE OF STACK
.DATA          ;WHERE ALL VARIABLES WILL BE DECLARED     

    A DB ?
    B DB ?
    
    
.CODE          ;WHERE ALL FUNCTIONS AND PROCEDURES DECLARED 

    MAIN PROC
       
       MOV AX, @DATA
       MOV DS, AX      ;IMPORTING DATA SECTION TO CODE SECTION
       
       MOV AH, 1
       INT 21H      ;INPUT WILL BE STORED IN AL
       MOV A, AL    ;STORING INPUT IN A VARIABLE
       SUB A, 48    ;TO STORE THE EXACT INPUT VALUE NOT THE ASCII VALUE
       
       MOV AH, 1
       INT 21H
       MOV B, AL
       SUB B, 48   
       
       MOV BH, A
       ADD BH, B 
       ADD BH, 48
       
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       MOV AH, 2 
       MOV DL, BH
       INT 21H
              
       MOV AH, 4CH
       INT 21H      ;RETURNS CONTROL TO THE OS AFTER EXECUTION
    
    MAIN ENDP   ;ENDS PROCEDURE
    
                
END MAIN        ;PROGRAM TERMINATION
    
    

    