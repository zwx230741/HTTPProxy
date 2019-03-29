SOURCES := $(shell find . -iname '*.c')
OBJECTS := $(SOURCES:.c=.o)

all: http

http:	$(OBJECTS)
	gcc $(OBJECTS) $(LFLAGS) -o http

.PHONY: clean
clean:
	rm $(OBJECTS) http
