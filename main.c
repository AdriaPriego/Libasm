#include <stdio.h>

// Declaración de la función ensamblador
extern void funcion_print(char *str);

int main() {
    printf("Llamando a la función ensamblador:\n");
    funcion_print("GUAU FUNCIONA\n");  // Llama a la función ensamblador que imprime "HOLA MUNDO"
    return 0;
}
