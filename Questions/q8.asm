global main
extern printf

section .data
    array   dd  1,2,3,4,5,6,7,8,9,10
    tam_array   equ 10
    msg1    db  "segundo menor valor: %d",10,0
    msg2    db  "segundo maior valor: %d",10,0
    sec_menor   dd  1024
    sec_maior   dd  0

section .text
main:
    mov esi, array
    mov eax, [array]
    mov ebx, eax
    mov ecx, [sec_menor]
    mov edi, 1

busca_sec_menor:
    mov edx, [esi + edi * 4]
    cmp edx, ebx
    jae verifica_sec_menor
    mov ecx, ebx
    mov ebx, edx
    jmp incrementa_array_menor

verifica_sec_menor:
    cmp edx, ecx
    jae incrementa_array_menor
    mov ecx, edx

incrementa_array_menor:
    inc edi
    cmp edi, tam_array
    jl busca_sec_menor

    mov [sec_menor], ecx

    mov esi, array
    mov eax, [array]
    mov ebx, eax
    mov ecx, [sec_maior]
    mov edi, 1

busca_sec_maior:
    mov edx, [esi + edi * 4]
    cmp edx, ebx
    jbe verifica_sec_maior
    mov ecx, ebx
    mov ebx, edx
    jmp incrementa_array_maior

verifica_sec_maior:
    cmp edx, ecx
    jbe incrementa_array_maior
    mov ecx, edx

incrementa_array_maior:
    inc edi
    cmp edi, tam_array
    jl busca_sec_maior

    mov [sec_maior], ecx

    push dword [sec_menor]
    push msg1
    call printf
    add esp, 8

    push dword [sec_maior]
    push msg2
    call printf
    add esp, 8

    mov eax, 0
    ret

