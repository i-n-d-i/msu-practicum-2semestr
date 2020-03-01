%include "io.inc"
;дана последовательность символов, оканчивающаяся точкой. вывести ее,
;заменив каждую латинскую букву на соотв. ей заглавную

section .text
global CMAIN
CMAIN:
    mov bl, 'a' - 'A'                   ;bl = 'a' - 'A'
begin:
    GET_CHAR al
    cmp al, '.'
    je finish
    cmp al, 'a'
    jb print                           
    cmp al, 'z'
    ja print
    sub al, bl
print:
    PRINT_CHAR al
    jmp begin 
finish:        
    xor eax, eax
    ret