; RDI: Primer argumento
; RSI: Segundo argumento
; RDX: Tercer argumento
; RCX: Cuarto argumento
; R8: Quinto argumento
; R9: Sexto argumento

section	.text
   global ft_read

ft_read:
    mov rax, 0
    syscall
    ret