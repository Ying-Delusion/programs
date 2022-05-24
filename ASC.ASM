.model small
.data
num db 56h,99h,12h
.code
mov ax,@data
mov ds,ax
mov ch,02h
up2:mov cl,02h
lea si,num
up1: mov al,[si]
mov bl,[si+1]
cmp al,bl
jc down
mov dl,[si+1]
xchg [si],dl
mov [si+1],dl
down:inc si
dec cl
jnz up1
dec ch
jnz up2 
int 21h
end
