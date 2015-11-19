CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc
INCLUDEFLAGS =

CFLAGS=-Wall
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o main.exe

SRCS = main.m Card.m
OBJS = $(SRCS:.m=.o)

run:all
	@echo "-------------------------------------"
	@./main.exe

# @ means target, < means source!
%.o : %.m
	$(CC) -c $< -o $@

%.d : %.m
	@set -e; rm -f $@; $(CC) -MM $< $(INCLUDEFLAGS) > $@.$$$$; \
    sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
    rm -f $@.$$$$

-include $(OBJS:.o=.d)

all: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) $(OUT)

.PHONY : all clean run
clean:
	@echo "-------------------------------------"
	-rm main.exe *.o *.d
