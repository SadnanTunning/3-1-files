;ASSEMBLY CODE STATEMENT FORMAT

    ;INSTRUCTION DESTINATION, SOURCE
    ;MOV         REG          VARIABLE
    ;ADD         REG          REG
    ;SUB         REG          MEMORY
    ;MUL/IMUL    REG          IMMEDIATE
    ;DIV/IDIV    MEMORY       REG
    ;XCHG        MEMORY       IMMEDIATE    
    
    ;BOTH SOURCE & DESTINATION MUST BE OF EQUAL SIZE


.MODEL SMALL
.STACK 100H
.DATA 
    NUM1 DB 67H ;VAR_NAME VAR_SIZE VAR_VALUE
    NUM2 DB ?   ;? REPRESENTS UNASSIGNED VALUE   
    
    ;DB = DEFINE BYTE = 8BITS
    ;DW = DEFINE WORD = 16BITS
    ;DD = DEFINE DOUBLEWORD = 32BITS
    ;DQ = DEFINE QUADWORD = 64BITS
    
.CODE
    
    
    MAIN PROC  
        
         MOV AX,@DATA
         MOV DS,AX   ;IMPORTS ALL VARIABLES TO CODE SECTION
         
         ;MOV
         MOV BX, 5H             ;REG,IMM
         MOV AX, BX             ;REG,REG
         MOV [0001],3012H       ;MEM,IMM
         MOV BX, [0001]         ;REG,MEM
         MOV [0004],CX          ;MEM,REG 
         MOV AX, [0004]         ;REG,MEM
         MOV [0016],1234H       ;MEM,IMM
         MOV DX, [0016]         ;REG,MEM
         MOV DX, 4444H          ;REG,IMM  
         MOV AH, NUM1           ;REG,VAR 
         MOV NUM2, AL           ;VAR,REG 
         
         ;IN CASE OF MOV:
         
              ;DST  ;SRC
         ;REG  YES   YES
         ;MEM  YES   YES
         ;VAR  YES   YES
         ;IMM  NO    YES
         
         MOV AH, 4CH 
         INT 21H     
         
    
    MAIN ENDP  

END MAIN