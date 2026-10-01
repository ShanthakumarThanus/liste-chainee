CC     = gcc
CFLAGS = -Wall -Wextra -std=c11 -g
OBJ    = main.o liste.o

demo.exe: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c liste.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) demo.exe

.PHONY: clean