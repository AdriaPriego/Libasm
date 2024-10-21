#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
// Declaración de la función ensamblador
extern int ft_strlen(char *c);
extern int ft_strcmp(char *c, char *s);
extern size_t ft_write(int ,char *, int);
extern size_t ft_read(int ,char *, int);
extern char *ft_strcpy(char *c, char *s);
extern char *ft_strdup(char *c);

int main() {
    printf("BASURA: %d\n", '\xff');
    char str[] = "Holiwis";
    printf("================= STRLEN ==================\n");
    int i = strlen(str);
    int j = ft_strlen(str);
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("================= STRCMP ==================\n");
    printf("/----------  - asdf ----------\\\n");
    i = strcmp("", "asdf");
    j = ft_strcmp("", "asdf");
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("/-------------- \\xff\\xff - \\xff --------------\\\n");
    i = strcmp("\xff\xff", "\xff");
    j = ft_strcmp("\xff\xff", "\xff");
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("/-------------- Holiwis -   --------------\\\n");
    i = strcmp(str, "");
    j = ft_strcmp(str, "");
    printf("\tORIGINAL: %d || ASM: %d\n", i, j);
    printf("================= WRITE ==================\n");
    printf(" --- %ld\n",ft_write(1, "char *c", 8));
    printf(" --- %ld\n",write(1, "char *c", 8));
    printf("================= READ ==================\n");
    char buff[100];
    char og[100];
    int fd = open("Makefile", O_RDONLY);
    printf("%ld --- %s\n",ft_read(fd, buff, 100),buff);
    close(fd);
    fd = open("Makefile", O_RDONLY);
    printf("%ld --- %s\n",read(fd, og, 100), og);
    close(fd);
    printf("================= STRCPY ==================\n");
    printf("/---------- Holiwis - Holiwiaaa ----------\\\n");
    char tmp[100];
    char tmp1[100];
    char *ex;
    char *ex1;
    ex = strcpy(tmp, "Holiwiaaa");
    printf("\tTMP: %s || EX: %s\n", tmp, ex);
    ex1 = ft_strcpy(tmp1, "Holiwiaaa");
    printf("\tTMP: %s || EX: %s\n", tmp1, ex1);
    printf("================= STRDUP ==================\n");
    char src[] = "HOLIWIS";
    char *mall;
    char *mall1;
    mall = strdup(src);
    printf("\tmall: %s || src: %s\n", mall, src);
    mall1 = ft_strdup(src);
    printf("\tmall: %s || src: %s\n", mall1, src);
    return 0;
}
