#include <stdio.h>
#include <string.h>
#include <unistd.h>
// Declaración de la función ensamblador
extern int ft_strlen(char *c);
extern int ft_strcmp(char *c, char *s);
extern size_t ft_write(int ,char *, int);

int main() {
    char str[] = "Holiwis";
    printf("================= STRLEN ==================\n");
    int i = strlen(str);
    int j = ft_strlen(str);
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);

    printf("================= STRCMP ==================\n");
    printf("/---------- Holiwis - Holiwiaaa ----------\\\n");
    i = strcmp(str, "Holiwiaaa");
    j = ft_strcmp(str, "Holiwiaaa");
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("/-------------- Holiwis - H --------------\\\n");
    i = strcmp(str, "H");
    j = ft_strcmp(str, "H");
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("/-------------- Holiwis -   --------------\\\n");
    i = strcmp(str, "");
    j = ft_strcmp(str, "");
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("================= WRITE ==================\n");
    printf(" --- %ld\n",ft_write(1, "char *c", 8));
    printf(" --- %ld\n",write(1, "char *c", 8));
    return 0;
}
