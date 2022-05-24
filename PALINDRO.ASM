.model small
.data
str db 'MADAM'
n dw $- str
rstr db 10 dup(10)
msg1 db 'palindrome $'
msg2 db 'Not palindrome $'
.code
MOV AX,@data
MOV DS,AX
MOV ES,AX
LEA SI,str
LEA DI,rstr
MOV CX,n
ADD DI,CX
DEC DI
back: CLD
      LODSB
      STD
      STOSB
      Loop back
LEA SI,str
LEA DI,rstr
CLD
MOV CX,n

REPE CMPSB
JE dmsg1
LEA DX,msg2
JMP Exit

dmsg1: LEA DX,msg1

Exit:MOV AH,09H
     Int 21H
     MOV AH,4CH
     INT 21H
     END

