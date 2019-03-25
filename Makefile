SOURCES := $(shell find . -iname '*.c')
OBJECTS := $(SOURCES:.c=.o)

all: http_proxy

http_proxy:	$(OBJECTS)
	gcc $(OBJECTS) $(LFLAGS) -o http_proxy

.PHONY:	tests
tests:
	gcc -I.. tests/http_message_test.c http_message.c -o http_message_test

.PHONY: clean
clean:
	rm $(OBJECTS) http_proxy
