.model large
.data
str1 db 150
db ?
db 150 dup(?)
str2 db 150
db ?
db 150 dup(?)
msg1 db 10, "strings are equal $"
msg2 db 10, "strings are not equal $"
msg3 db 10, "enter string 1 $"
msg4 db 10, "enter string 2 $"
msg5 db 10, "length of string1 = $"
msg6 db 10, "length of string2 = $"
clrscr macro
mov al,2
mov ah,0
int 10h
endm
disp macro str
lea dx,str
mov ah,09h
int 21h
endm
.code
mov ax,@data
mov ds,ax
mov es,ax
clrscr
disp msg3
mov dx,offset str1
mov ah,0ah
int 21h
disp msg4
mov dx,offset str2
mov ah,0ah
int 21h
disp msg5
mov dl,str1[1]
add dl,30h
mov ah,2
int 21h
disp msg6
mov dl,str2 [1]
add dl,30h
mov ah,2
int 21h
mov al,str1[1]
cmp al,str2[1]
JNE noteq

mov ch,00h
mov al,str1[1]
cld

lea si,str1
lea di,str2
repe cmpsb
JNZ noteq
disp msg1
jmp stop

noteq:disp msg2

stop: mov ah,4ch
      int 21H
      END
