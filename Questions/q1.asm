section .data
    rst db "Resultado: %d", 10, 0  

section .bss
    

section .text
    extern printf
    global main
    extern exit

main:
    
    mov rax, 0     
    mov rcx, 1      

sum_loop:
    add rax, rcx   
    inc rcx         
    cmp rcx, 101    
    jl sum_loop     

   
    mov rdi, rst   
    mov rsi, rax    
    xor rax, rax    
    call printf    

   
    mov rdi, 0      
    call exit       

