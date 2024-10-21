
NAME = libasm.a

CC = nasm -f elf64
LIB = ar rcs

SRC = ft_strlen.s ft_strcmp.s ft_write.s ft_read.s ft_strcpy.s ft_strdup.s
OBJ = $(addprefix $(TMP),$(SRC:.s=.o))

TMP = .tmp/

all: ${NAME}

$(NAME): ${TMP} ${OBJ}
	${LIB} ${NAME} ${OBJ}
	ranlib ${NAME}

$(TMP):
	mkdir -p ${TMP}

main: all
	cc  -o compile ${NAME} main.c -L. -lasm  

$(TMP)%.o: %.s Makefile
	$(CC) $< -o $@
# @printf "$(CL_LINE)$(YELLOW)Compiling... $(END)$(patsubst $(TMP)%,%,$@)\n"

clean:
	rm -rf ${TMP}

fclean: clean
	rm -rf ${NAME}
	rm -rf compile

re: fclean all

rem: fclean main