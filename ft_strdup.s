extern malloc
extern ft_strlen
extern ft_strcpy

section .text
    global ft_strdup

ft_strdup:
    call ft_strlen
    push rdi
    inc rax
    mov rdi, rax
    call malloc wrt ..plt
    mov rdi, rax
    pop rsi
    call ft_strcpy
    ret
