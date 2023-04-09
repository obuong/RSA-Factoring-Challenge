CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
SRCS = factor.c factorize.c
OBJS = $(SRCS:.c=.o)

factor: $(OBJS)
    $(CC) $(CFLAGS) $(OBJS) -o factor

factor.o: factor.c factor.h
    $(CC) $(CFLAGS) -c factor.c

factorize.o: factorize.c factor.h
    $(CC) $(CFLAGS) -c factorize.c

clean:
    $(RM) $(OBJS) factor
