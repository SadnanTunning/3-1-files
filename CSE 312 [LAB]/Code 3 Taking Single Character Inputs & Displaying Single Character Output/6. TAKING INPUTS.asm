.MODEL SMALL   ;DEFINES THE SIZE OF THE MEMORY MODEL
.STACK 100H    ;DEFINES THE SIZE OF STACK
.DATA          ;WHERE ALL VARIABLES WILL BE DECLARED
.CODE          ;WHERE ALL FUNCTIONS AND PROCEDURES DECLARED

    MAIN PROC
       
       MOV AH, 1   
       INT 21H      ;FOR TAKING SINGLE CHARACTER INPUTS. 
                    ;INPUT GETS STORED IN AL
                    
       MOV AH, 2    ;FOR PRINTING A SINGLE CHARACTER OUTPUT
       MOV DL, AL
       INT 21H 
       
       
       ;ALWAYS REMEMEBER
       ;MOV AH, 1 RECEIVES INPUT AND STORES IT IN AL REGISTER
       ;MOV AH, 2 PRINTS OUTPUT AFTER MOVING THEM TO DL REGISTER  
       
       
       MOV AH, 4CH
       INT 21H      ;RETURNS CONTROL TO THE OS AFTER EXECUTION
    
    MAIN ENDP   ;ENDS PROCEDURE
    
                
END MAIN        ;PROGRAM TERMINATION
    
    

    