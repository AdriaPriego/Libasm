section .text
   extern __errno_location  ; Declarar __errno_location como externa
   global ft_read

ft_read:
    mov rax, 0
    syscall
   cmp rax, 0
   jge .success
   mov rcx, rax ; tmp = ret
   call __errno_location
   neg rcx
   mov [rax], rcx
   mov rax, -1
   ret
.success:
   ret