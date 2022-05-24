.model small
.data
list db 1h,2h,3h,4h,5h
len dw($-list)
key db 4
msg1 db "found $"
msg2 db "found not $"
.code
mov ax,@data
mov ds,ax
mov si,0
mov di,len
dec di
back:cmp si,di
ja notfound
mov bx,si
add bx,01
mov al,list[bx]
cmp al,key
je gf
jb nm
mov di,bx
sub di,01
jmp back
nm:mov si,bx
add si,01
jmp back
notfound:lea dx,msg2
jmp next
gf:lea dx,msg1
next:mov ah,09h
int 21h
mov ah,ch
int 21h
end














































4
