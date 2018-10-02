data segment
msg db "Hello$"

code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax

mov ax,03h
int 10h

mov ah,02h
mov bh,00
mov dh,0Ah
mov dl,0Ah
int 10h

lea dx,msg
mov ah,09h
int 21h

code ends
end start