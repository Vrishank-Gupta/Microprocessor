code segment
assume cs:code
start:

mov ax,0600h
mov cx,0000h
mov dx,184fh
int 10h

code ends
end start