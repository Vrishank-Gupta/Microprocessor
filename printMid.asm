DATA SEGMENT
    MSG1 DB "HELLO I AM VISHU $"
DATA ENDS
CODE SEGMENT
           ASSUME DS:DATA,CS:CODE
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,0600H
        MOV BH,71H
        MOV CX,0000H
        MOV DX,184FH
        INT 10H

        MOV AH,02H
        MOV BH,00
        MOV DX,0C27H
        INT 10H

        MOV AH,09H
        LEA DX,MSG1
        INT 21H

        MOV AH,4CH
        INT 21H
CODE ENDS
END START