CC = gcc
CFLAGS = -Wall -Wextra -Ilexer -Iparser -I./include

SRC = main.c \
      src/instruction.c \
      src/stack.c \
      src/bytecode.c \
      src/vm.c

OBJ = $(SRC:.c=.o)

TARGET = compiler

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(TARGET)
	@./$(TARGET) prac.lub

clean:
	@echo "CLEANED"
	@rm -f $(OBJ) $(TARGET)

.PHONY: all run clean