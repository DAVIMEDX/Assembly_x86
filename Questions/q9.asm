global main
extern printf, scanf

section .data
    msg1                db  "Digite a nota 1 (peso 1): ", 0
    msg2                db  "Digite a nota 2 (peso 2): ", 0
    msg3                db  "Digite a nota 3 (peso 3): ", 0  
    format              db  "%d", 0
    nota                dd  0
    rst                 db  "Media: %d", 10, 0
    gamer_over          db  "Aluno reprovado", 10, 0
    segunda_chance      db  "Aluno em avaliacao final", 10, 0
    happy               db  "Aluno aprovado", 10, 0     

section .bss
    n1      resd 1
    n2      resd 1
    n3      resd 1
    media   resd 1  

section .text
main:

    push msg1
    call printf
    add esp, 4

    lea eax, [nota]
    push eax
    push format
    call scanf
    add esp, 8

    mov eax, [nota]
    mov [n1], eax

    push msg2
    call printf
    add esp, 4
     
    lea eax, [nota]
    push eax
    push format
    call scanf
    add esp, 8

    mov eax, [nota]
    mov [n2], eax

    push msg3
    call printf
    add esp, 4

    lea eax, [nota]
    push eax
    push format
    call scanf
    add esp, 8

    mov eax, [nota]
    mov [n3], eax

    mov eax, [n2]
    mov ebx, 2
    mul ebx
    mov [n2], eax

    mov eax, [n3]
    mov ebx, 3
    mul ebx
    mov [n3], eax
    
    mov eax, [n1]
    add eax, [n2]
    add eax, [n3]

    xor edx, edx
    mov ebx, 6
    div ebx
    mov [media], eax

verifica_media:
    cmp eax, 7
    jge aprovado
    
    cmp eax, 4
    jge aval_final
    
    jmp reprovado

aprovado:
    push dword [media]
    push rst
    call printf
    add esp, 8

    push happy
    call printf
    add esp, 4
    jmp exit

aval_final:
    push dword [media]
    push rst
    call printf
    add esp, 8

    push segunda_chance
    call printf
    add esp, 4
    jmp exit

reprovado:
    push dword [media]
    push rst
    call printf
    add esp, 8

    push gamer_over
    call printf
    add esp, 4

exit:
    mov eax, 0
    ret

