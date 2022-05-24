.model small
.code
mov al,23h
mov bl,al
and al,0Fh
mov bh,al
and bl,0Fh
ror bl,cl
mov al,0ah
mul bl
add al,bh
int 21h
end
