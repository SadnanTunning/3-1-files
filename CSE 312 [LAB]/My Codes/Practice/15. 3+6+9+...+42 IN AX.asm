.MODEL SMALL
.STACK 100H                                                              
.DATA
.CODE
MAIN PROC
    
MOV AX,@DATA
MOV DS,AX 
 
MOV BX,3          ;BX HOLDS STARTING POINT (STARTING POINT 3)
MOV CX,14         ;CX HOLDS INPUT COUNTER (14 INPUTS=3,6,9,12,15,18,21,24,27,30,33,36,39,42)
MOV AX,0          ;AL HOLDS WHAT IS INITIALLY HAVE TO SUM (ADD 0 INITIALLY)

L1: ADD AX,BX     ;ADDING 0+3=3 AND STORE IN AX
ADD BX,3          ;INCREMENT BX VALUE BY 3

LOOP L1           ;LOOP IT


MAIN ENDP
END MAIN    