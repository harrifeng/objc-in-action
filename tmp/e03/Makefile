run:all
	@echo "-------------------------------------"
	@./main.exe
CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

SOURCE=main.m

CFLAGS=-Wall
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o main.exe

BNRPerson.o: BNRPerson.m BNRPerson.h
	$(CC) -c BNRPerson.m
main.o: main.m
	$(CC) -c main.m

objects = main.o BNRPerson.o

all: $(objects)
	$(CC) $(CFLAGS) $(LDFLAGS) $(objects) $(OUT)
clean:
	rm -rf main.exe *.o
