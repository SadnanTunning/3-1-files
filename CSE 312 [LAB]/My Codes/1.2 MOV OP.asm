;;ASSEMBLY CODE STATEMENT FORMAT
    
    ;;INSTRUCTION   DESTINATION,     SOURCE
    ;;MOV           REG              VARIABLE
    ;;ADD           REG              REG
    ;;SUB           REG              MEMORY LOCATION
    ;;MUL/IMUL      REG              IMMEADIATE
    ;;DIV/IDIV
    ;;XCHG


    ;;BOTH SOURCE AND DESTINATION MUST BE OF EQUAL SIZE


;.MODEL SMALL
;.STACK 100H

;.DATA
    ;where all variables stay  
      
;.CODE
    ;where all procedures stay
    
   ;MAIN PROC  ;main procedure begins
   
    ;MOV AX,012H       ;statements
    ;MOV BX,123H       ;statements
    ;MOV CX,AX         ;statements
    ;MOV DX,BX         ;statements 
    ;MOV AH,4CH        ;function to return space taken in the system to OS
    ;INT 21H           ;generates an interruption
    
   ;MAIN ENDP  ;main procedure ends
   
;END MAIN 

;;template 1 end 
;;temp 2 starts

.MODEL SMALL
.STACK 100H
.DATA
     
     NUM1 DB 67H ;VAR_NAME  VAR_SIZE  VAR_VALUE
       
     NUM2 DB ?   ;? REPRESENTS UNASSIGNED VALUE  

.CODE

    MAIN PROC 
        
        MOV AX,@DATA
        MOV DS,AX       ;IMPORT ALL VARIABLES TO CODE SECTION
            
        MOV BX,5H                 ;REG,IMM
        MOV AX,BX                 ;REG,REG
        MOV [0001],3012H          ;MEM,IMM
        MOV BX,[0001]             ;REG,MEM
        MOV [0004],CX             ;MEM,REG
        MOV AX,[0004]             ;REG,MEM
        MOV [0016],1234H          ;MEM,IMM
        MOV DX,4444H              ;REG,IMM
        MOV AH,NUM1               ;REG,VAR 
        MOV NUM1,AL                         
        
        ;IN CASE OF MOV
        
        
        ;       DST    SRC
        
        ;REG    YES     YES 
        ;MEM    YES     YES
        ;IMM    NO      YES 
        ;VAR    YES     YES
        
        MOV AH,4CH
        INT 21H
        
    MAIN ENDP 
    
END MAIN
    