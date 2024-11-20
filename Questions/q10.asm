global main
extern printf, scanf

section .data
    media       dd  0           
    format      db  "%d", 0
    msg_input   db  "Digite a media final do aluno: ", 0
    msg_error   db  "Voce digitou um numero invalido.", 10, 0
    msg_approved db  "Aprovado!", 10, 0
    msg_failed  db  "Reprovado!", 10, 0
    msg_exit_query db  "Digite -1 pra sair", 10, 0
    msg_end     db  "Fim do programa", 10, 0      

section .text
main:

check_input:
    mov eax, [media]
    cmp eax, -1
    je  end_program

request_input:
    push msg_input
    call printf
    add esp, 4  

    lea eax, [media]
    push eax
    push format
    call scanf
    add esp, 8

    mov eax, [media]
    cmp eax, -1
    je end_program
    cmp eax, 0    
    jb  invalid_number
    cmp eax, 10
    ja  invalid_number
    
    cmp eax, 7
    jb  not_approved
    
    push msg_approved
    call printf
    add esp, 4

    jmp exit_program

invalid_number:
    push msg_error
    call printf
    add esp, 4
          
    jmp request_input

not_approved:
    push msg_failed
    call printf 
    add esp, 4

exit_program:
    push msg_exit_query
    call printf 
    add esp, 4

    lea eax, [media]
    push eax
    push format
    call scanf 
    add esp, 8

end_program:
    push msg_end
    call printf
    add esp, 4
    mov eax, 0
    ret

