NAME = elf-cracker
CC   = gcc
CFLAGS  = -Wall -Wextra -I include -pie -static
SRC = src/main.c \
	src/map_elf.c \
	src/pack_elf.c \

FLAG_NAME = flag
FLAG = src/flag.c

$(NAME): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^
	$(CC) $(FLAG) -o $(FLAG_NAME)

clean:
	rm -f $(NAME) $(FLAG_NAME)
