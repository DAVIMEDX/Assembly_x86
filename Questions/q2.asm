section .data
    fmt db "Resultado: %d", 0  
    a dq 0
    b dq 4
    c dq 6

section .text
    extern printf
    global main
    extern exit
    
    
main:

    mov rax, [b]
    imul rax, 2
    mov [a], rax
    
    mov rax, [c]
    mov rbx, 2
    xor rdx, rdx
    div rbx
    add [a], rax
    
    mov rax, 200
    add [a], rax
    
    mov rdi, fmt
    mov rsi, [a]
    call printf
    
    mov rax, 60
    xor rdi, rdi
    syscall

