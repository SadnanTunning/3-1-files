.MODEL SMALL
.STACK 100H
.DATA
.CODE

    MAIN PROC
        
MOV AH,1          ;prepare to read  (REQUEST FOR INPUT)

REPEAT:
INT 21H           ;char in AL (GIVE INPUT)

;untill

CMP AL,' '        ; a blank?
JNE REPEAT        ;no, keep reading   (JUMP IF NOT EQUAL TO BLANK) READ CHARACTER UNTILL FINDS A BLACK SPACE

     MAIN ENDP


END MAIN