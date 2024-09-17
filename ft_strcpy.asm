; RDI: Primer argumento
; RSI: Segundo argumento
; RDX: Tercer argumento
; RCX: Cuarto argumento
; R8: Quinto argumento
; R9: Sexto argumento

section	.text
    global ft_strcpy

ft_strcpy:
    mov rdx, rdi

.loop:
    mov al, [rsi]
    mov [rdi], al
    test al, al
    je .done
    inc rsi
    inc rdi
    jmp .loop

.done:
    mov rax, rdx
    ret