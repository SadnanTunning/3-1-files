.MODEL SMALL
.STACK 100H
.DATA
.CODE

    MAIN PROC
        
        
MOV CX, 0      ; DX counts characters (or CX)
MOV AH, 1      ; prepare to read    (REQUEST FOR INPUT)
INT 21H        ; character in AL    (TAKE INPUT)


WHILE_:
CMP AL, 0DH    ; CR?
JE END_WHILE   ; yes, exit
INC CX         ; not CR, increment count
INT 21H        ; read a character
JMP WHILE_     ; loop back

END_WHILE:


      MAIN ENDP


END MAIN