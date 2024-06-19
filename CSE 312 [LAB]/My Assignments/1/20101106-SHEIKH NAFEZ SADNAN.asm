.MODEL SMALL             ;DEFINES THE SIZE OF THE MEMORY MODEL
.STACK 100H              ;DEFINES THE SIZE OF STACK
.DATA                    ;VARIABLE DECLARATION

   NUMB DB 01111000B   
   NUMD DB 120D
   NUMO DB 170O
   NUMH DB 78H
   CHAR DB '3'
   CHARASC DB 3
   STR DB "HELLO WORLD$"
   UNKNOWN DB ?  
   
   
.CODE                     ;ALL FUNCTION AND PROCEDURE BEGINS

  MAIN PROC               ;START PROCEDURE
    
      MOV AX,@DATA        ;SHIFTING VARIABLES FROM DATA SEGMENT TO CODE SEGMENT
      MOV DS,AX
      
      
       
       ;TAKING INPUT
       MOV AH, 1
       INT 21H
       MOV UNKNOWN, AL
       
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H        
       
       ;PRINT NUMB
       MOV AH, 2
       MOV DL, NUMB
       INT 21H
      
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       ;PRINT NUMD
       MOV AH, 2
       MOV DL, NUMD
       INT 21H
       
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H        
       
       ;PRINT NUMO
       MOV AH, 2
       MOV DL, NUMO
       INT 21H  
      
      
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
      
       ;PRINT NUMH
       MOV AH, 2
       MOV DL, NUMH
       INT 21H
       
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
       ;PRINT CHAR
       MOV AH, 2
       MOV DL, CHAR
       INT 21H  
      
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
                 
       ;PRINT CHARASC
       MOV AH, 2
       MOV DL, CHARASC
       INT 21H  
       
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL,0DH
       INT 21H 
       
       ;PRINT STR
       MOV AH, 9
       LEA DX, STR
       INT 21H
       
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
                
       ;PRINT UNKNOWN
       MOV AH, 2
       MOV DL, UNKNOWN
       INT 21H
       
       ;PRINTING A NEW LINE                     
       MOV AH, 2
       MOV DL, 0AH
       INT 21H
       MOV DL, 0DH
       INT 21H
       
      
               
    MOV AH,4CH            ;RETURNS CONTROL TO THE OS AFTER EXECUTION
    INT 21H     
               
   MAIN ENDP              ;END PROCEDURE
  
END MAIN                  ;PROGRAM TERMINATED