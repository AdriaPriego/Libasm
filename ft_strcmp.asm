; RDI: Primer argumento
; RSI: Segundo argumento
; RDX: Tercer argumento
; RCX: Cuarto argumento
; R8: Quinto argumento
; R9: Sexto argumento

section	.text
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
    test al, al
    jz .equals
    ret
.final:
    cmp bl, 0
    jne .badfinal
    mov rax, 0
    je .done
.badfinal:
    sub al, bl
    ret
.equals:
    inc rcx
    jmp .calcdiff
.done:
    ret