DATA SEGMENT
N1 DW 0020H,0001H,0001H,0002H
RES DW ?
CNT DB 04H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV CL,CNT
MOV SI,0000H
MOV DX,0000H
NEXT:
MOV AX,N1[SI]
ADD DX,AX
INC SI
INC SI
LOOP NEXT
MOV AX,DX
mov res, ax
DIV CNT

add al,30h
mov dl,al

mov ah,02h
int 21h

MOV AH,4CH
INT 21H
CODE ENDS
END START
