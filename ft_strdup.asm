extern malloc

section .text
    global ft_strdup

ft_strdup:
    mov rsi, rdi
    xor rcx, rcx

.strlen_loop:
    cmp byte [rsi], 0
    je .strlen_done
    inc rsi
    inc rcx
    jmp .strlen_loop

.strlen_done:
    inc rcx

    mov rdi, rcx
    call malloc

    test rax, rax
    je .malloc_failed

    mov rsi, rdi
    mov rdi, rax
    
.copy_loop:
    mov al, [rsi]
    mov [rdi], al
    test al, al
    je .copy_done
    inc rsi
    inc rdi
    jmp .copy_loop

.copy_done:
    ret

.malloc_failed:
    xor rax, rax
    ret
