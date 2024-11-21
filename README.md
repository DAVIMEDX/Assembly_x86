# 🖥️ Códigos em Assembly x86 / Assembly x86 Code Examples

Bem-vindo ao repositório de exemplos práticos desenvolvidos em Assembly para a arquitetura **x86**! 🚀  
Welcome to the repository of practical examples developed in Assembly for the **x86** architecture! 🚀  

Este repositório é dedicado a compartilhar implementações práticas que utilizam as instruções fundamentais da arquitetura x86, ideal para quem deseja aprender, revisar ou expandir seus conhecimentos sobre programação em baixo nível.  
This repository is dedicated to sharing practical implementations that leverage the fundamental instructions of the x86 architecture, ideal for those who want to learn, review, or expand their knowledge of low-level programming.

---

## 📂 Estrutura do Repositório / Repository Structure

- **📜 Exemplos Básicos / Basic Examples**: Instruções simples para iniciantes, como manipulação de registradores, operações aritméticas e chamadas de funções.  
  Simple instructions for beginners, such as register manipulation, arithmetic operations, and function calls.  
- **🛠️ Funções de Sistema / System Functions**: Implementações que utilizam chamadas de sistema (syscalls) para interação com o SO.  
  Implementations that use system calls (syscalls) to interact with the OS.  
- **📈 Aplicações Avançadas / Advanced Applications**: Códigos que envolvem lógica mais complexa, como manipulação de strings, operações em memória e controle de fluxo.  
  Code involving more complex logic, such as string manipulation, memory operations, and flow control.

---

## 📋 O que você vai encontrar? / What will you find?

1. **Manipulação de registradores / Register manipulation**: Exemplos práticos de operações aritméticas e lógicas.  
   Practical examples of arithmetic and logical operations.  
2. **Entrada e saída de dados / Input and output**: Uso de chamadas de sistema e bibliotecas padrão (ex: `printf`).  
   Using system calls and standard libraries (e.g., `printf`).  
3. **Exemplos com `_start` / Examples with `_start`**: Programas que utilizam o ponto de entrada `_start` como base.  
   Programs that use `_start` as the entry point.

---

## ⚙️ Requisitos / Requirements

- **Assembler**: Utilize o `nasm` (Netwide Assembler) para compilar os códigos.  
  Use `nasm` (Netwide Assembler) to compile the code.  
- **Linker**: Use o `ld` para gerar executáveis.  
  Use `ld` to generate executables.  
- **Ambiente Linux / Linux Environment**: A maioria dos exemplos são projetados para ambientes Linux, com chamadas de sistema específicas.  
  Most examples are designed for Linux environments, with specific system calls.

---

## 🧑‍💻 Exemplos de Comandos / Example Commands

Para compilar e executar um código Assembly:  
To compile and run an Assembly code:  
```bash
nasm -f elf32 exemplo.asm -o exemplo.o
ld -m elf_i386 exemplo.o -o exemplo
./exemplo
```

