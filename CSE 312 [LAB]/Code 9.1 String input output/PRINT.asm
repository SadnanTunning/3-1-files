.MODEL SMALL   ;DEFINES THE SIZE OF THE MEMORY MODEL
.STACK 100H    ;DEFINES THE SIZE OF STACK
.DATA          ;WHERE ALL VARIABLES WILL BE DECLARED  

    NUMD DB 48 
    NUMH DB 33H
    CHAR DB 'A'
    MSG DB "CSE 312$"  
    UNKNOWN DB ?
    
    
.CODE          ;WHERE ALL FUNCTIONS AND PROCEDURES DECLARED

    MAIN PROC
       
       MOV AX, @DATA
       MOV DS, AX    ;IMPORT ALL THE VARIABLES IN THE CODE SEGMENT 
       
       MOV AH, 1     ;FOR TAKING INPUT
       INT 21H       ;INPUT STORED IN AL
       MOV UNKNOWN, AL
                        
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       MOV AH, 2     ;FOR PRINTING ON OUTPUT SCREEN
       MOV DL, NUMD
       INT 21H
       
       ;FOR PRINTING A NEW LINE
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H 
       
       MOV AH, 2     ;FOR PRINTING ON OUTPUT SCREEN
       MOV DL, NUMH
       INT 21H 
       
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       MOV AH, 2     ;FOR PRINTING ON OUTPUT SCREEN
       MOV DL, CHAR
       INT 21H 
       
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       ;STRING PRINT (METHOD 1)
       MOV AH, 9            ;TO PRINT A STRING
       MOV DX, OFFSET MSG
       INT 21H     
       
       ;NEWLINE PRINT
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H    
       
       ;STRING PRINT (METHOD 2)
       MOV AH, 9
       LEA DX, MSG   ;GET MSG
       INT 21H
       
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H 
       
       MOV AH, 2     ;FOR PRINTING ON OUTPUT SCREEN
       MOV DL, UNKNOWN
       INT 21H
              
       MOV AH, 4CH
       INT 21H      ;RETURNS CONTROL TO THE OS AFTER EXECUTION
    
    MAIN ENDP   ;ENDS PROCEDURE
    
                
END MAIN        ;PROGRAM TERMINATION
    
    

    