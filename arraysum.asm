DATA SEGMENT
ARR DB 5,3,7,1,9,2,6,8,4,10
LEN DW $-ARR
SUM DW ? 
DATA ENDS

CODE SEGMENT
ASSUME DS:DATA, CS:CODE
START:

MOV AX,DATA
MOV DS,AX

LEA SI,ARR
MOV AX,0
MOV CX,LEN

REPEAT:

MOV BL,ARR[SI]
MOV BH,0
ADD AX,BX
INC SI
LOOP REPEAT
MOV SUM, AX

MOV AL,SUM
MOV AH,0
MOV DL,10
DIV DL

add ax,3030h
mov dh, ah
mov dl, al
mov ah,02h
int 21h

mov dl,dh
int 21h

MOV AX,4c00H
INT 21H

CODE ENDS
END START