%include 'in_out.asm'

SECTION .data
    msg: DB 'Введите строку: ',0h

SECTION .bss
    buf1: RESB 80

SECTION .text
    GLOBAL _start
_start:
    ; 1. Вывести приглашение
    mov eax, msg
    call sprintLF
    
    ; 2. Ввести строку с клавиатуры
    mov ecx, buf1      ; адрес буфера в ECX
    mov edx, 80        ; длина в EDX
    call sread
    
    ; 3. Вывести введённую строку на экран
    mov eax, buf1
    call sprintLF
    
    ; 4. Завершить программу
    call quit
