section	.text
   global ft_strlen

ft_strlen:
    xor rax, rax
.calclen:
    cmp byte [rdi + rax], 0
    je .done
    inc rax
    jmp .calclen
.done:
    ret