section .text
   extern __errno_location
   global ft_write

ft_write:
   mov rax, 1
   syscall
   cmp rax, 0
   jge .success
   mov rcx, rax
   call __errno_location
   neg rcx
   mov [rax], rcx
   mov rax, -1
   ret
.success:
   ret