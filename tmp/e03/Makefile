CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc

CFLAGS=-Wall
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o main.exe

objects = main.o BNRPerson.o

run:all
	@echo "-------------------------------------"
	@./main.exe

# @ means target, < means source!
$(objects): %.o : %.m
	$(CC) -c $< -o $@

all: $(objects)
	$(CC) $(CFLAGS) $(LDFLAGS) $(objects) $(OUT)

.PHONY : all clean run
clean:
	-rm main.exe $(objects)
