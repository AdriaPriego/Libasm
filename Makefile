
NAME = libasm.a

CC = nasm -f elf64
LIB = ar rcs

SRC = ft_strlen.asm ft_strcmp.asm ft_write.asm
#ft_strcpy.asm ft_write.asm ft_read.asm ft_strdup.asm
OBJ = $(addprefix $(TMP),$(SRC:.asm=.o))

TMP = .tmp/

all: dir ${OBJ}
	${LIB} ${NAME} ${OBJ}
	ranlib ${NAME}
dir:
	mkdir -p ${TMP}

main: all
	gcc -no-pie -m64 ${NAME} main.c -L. -lasm -o compile

$(TMP)%.o: %.asm
	@printf "$(CL_LINE)$(YELLOW)Compiling... $(END)$(patsubst $(TMP)%,%,$@)\n"
	$(CC) $< -o $@

clean:
	rm -rf ${TMP}

fclean: clean
	rm -rf ${NAME}
	rm -rf compile

re: fclean all

rem: fclean main