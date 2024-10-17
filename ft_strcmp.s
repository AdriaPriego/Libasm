section .text
    global ft_strcmp

ft_strcmp:
    xor rax, rax
    xor rcx, rcx

.calcdiff:
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp al, 0
    je .final
    sub al, bl
    jne .diff

.equals:
    inc rcx
    jmp .calcdiff

.final:
    cmp bl, 0
    jne .badfinal
    mov rax, 0
    ret

.badfinal:
    mov al, [rdi + rcx]
    sub al, bl

.diff:
    jc .negresult
    mov rax, 1
    ret

.negresult:
    mov rax, -1
    ret
