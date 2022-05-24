.model small
.data
arr db 01h,05h,02h,04h,03h
sum db 00h
.code
mov ax,@data
mov ds,ax
mov cx,05h
lea si,arr
mov al,00h
repeat : mov bl,[si]
         test bl,01h
         jz next
         add al,bl
next:inc si
loop repeat
mov sum,al
mov ah,4ch
int 21h
end
