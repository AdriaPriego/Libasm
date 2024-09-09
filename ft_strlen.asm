section .text
    global funcion_print ; Hacer que la función sea accesible desde C

funcion_print:
    ; El puntero al string está en rdi (primer argumento)
    mov rsi, rdi         ; Guardamos el puntero a la cadena en rsi

    ; Necesitamos calcular la longitud de la cadena (strlen)
    xor rcx, rcx         ; Inicializamos el contador rcx a 0

calcular_longitud:
    mov al, [rsi + rcx]  ; Cargamos el byte en la posición (rsi + rcx)
    cmp al, 0            ; Comparamos el byte con 0 (terminador nulo)
    je imprimir          ; Si es 0, saltamos a la impresión
    inc rcx              ; Incrementamos el contador si no es el final
    jmp calcular_longitud ; Repetimos el ciclo

imprimir:
    mov eax, 1           ; syscall número 1 = write
    mov edi, 1           ; file descriptor 1 = salida estándar (stdout)
    mov rdx, rcx         ; Longitud de la cadena calculada en rdx (64 bits)
    syscall              ; Realiza la syscall
    ret                  ; Retorna
