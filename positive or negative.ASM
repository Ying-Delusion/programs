.model small
.data
num db -12h
msg1 db 'number is positive$'
msg2 db 'number is negitive$'
.code
mov ax,@data
mov ds,ax
mov al,num
rol al,01
jc dmsg2
lea dx,msg1
jmp exit
dmsg2:lea dx,msg2
exit:
mov ah,09h
int 21h
mov ah,4ch
int 21h
end
