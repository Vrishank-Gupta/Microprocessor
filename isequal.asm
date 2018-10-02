data segment
msg db 'numbers are not equal $'
msg2 db 'numbers are equal  $'
data ends

code segment
assume cs:code, ds:data
start:

mov ax,data
mov ds,ax

mov ah, 01h
int 21h
mov bl, al

;prints newline
mov ah,02h
mov dl,0dh
int 21h
mov dl,0ah
int 21h

mov ah, 01h
int 21h
mov cl, al

;prints newline
mov ah,02h
mov dl,0dh
int 21h
mov dl,0ah
int 21h


if:
cmp bl, cl
je else

mov ah, 9
lea dx, msg 
int 21h

jmp endif

else:

mov ah, 9
lea dx, msg2
int 21h

endif:

mov ah,4ch
int 21h

code ends
end start