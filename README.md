# 🖥️ Códigos em Assembly x86

Bem-vindo ao repositório de exemplos práticos desenvolvidos em Assembly para a arquitetura **x86**! 🚀

Este repositório é dedicado a compartilhar implementações práticas que utilizam as instruções fundamentais da arquitetura x86, ideal para quem deseja aprender, revisar ou expandir seus conhecimentos sobre programação em baixo nível.

## 📂 Estrutura do Repositório

- **📜 Exemplos Básicos**: Instruções simples para iniciantes, como manipulação de registradores, operações aritméticas e chamadas de funções.
- **🛠️ Funções de Sistema**: Implementações que utilizam chamadas de sistema (syscalls) para interação com o SO.
- **📈 Aplicações Avançadas**: Códigos que envolvem lógica mais complexa, como manipulação de strings, operações em memória e controle de fluxo.

## 📋 O que você vai encontrar?

1. **Manipulação de registradores**: Exemplos práticos de operações aritméticas e lógicas.
2. **Entrada e saída de dados**: Uso de chamadas de sistema e bibliotecas padrão (ex: `printf`).
3. **Exemplos com `_start`**: Programas que utilizam o ponto de entrada `_start` como base.

## ⚙️ Requisitos

- **Assembler**: Utilize o `nasm` (Netwide Assembler) para compilar os códigos.
- **Linker**: Use o `ld` para gerar executáveis.
- **Ambiente Linux**: A maioria dos exemplos são projetados para ambientes Linux, com chamadas de sistema específicas.

## 🧑‍💻 Exemplos de Comandos

Para compilar e executar um código Assembly:
```bash
nasm -f elf32 exemplo.asm -o exemplo.o
ld -m elf_i386 exemplo.o -o exemplo
./exemplo
