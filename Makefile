CC=clang

FRAMEWORKS:= -F /System/Library/PrivateFrameworks -framework IOKit -framework CoreFoundation -framework login

SOURCE=yubikeylockd.c

CFLAGS=-Wall -Werror -O2 $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o yubikeylockd

all: yubikeylockd

clean:
		rm -rf yubikeylockd

yubikeylockd:
		$(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
