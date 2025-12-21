%include 'in_out.asm'

SECTION .data
msg1 DB 'Выражение: (10 + 2x)/3',0
msg2 DB 'Введите x: ',0
res  DB 'Результат: ',0

SECTION .bss
x RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,msg1
call sprintLF

mov eax,msg2
call sprint

mov ecx,x
mov edx,80
call sread

mov eax,x
call atoi

mov ebx,2
mul ebx
add eax,10
mov ebx,3
xor edx,edx
div ebx

mov edi,eax

mov eax,res
call sprint
mov eax,edi
call iprintLF

call quit
