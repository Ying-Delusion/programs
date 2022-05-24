.model small
.data
num db 23h
z dB 00h
o dB 00h
.code
mov ax,@data
mov ds,ax
mov al,num
mov bl,00h
mov cl,08h
mov dl,00h
up:rol al,01
   jc one
   inc bl
   jmp next
one :inc dl
next:dec cl
jnz up
mov z,bl
mov o,dl
int 21h
end
