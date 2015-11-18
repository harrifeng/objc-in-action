run:all
	@echo "-------------------------------------"
	@./main.exe
CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

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

.PHONY : all clean run
clean:
	-rm main.exe $(objects)
