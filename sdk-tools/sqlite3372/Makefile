UNAME := $(shell uname)

ifeq ($(UNAME), Linux)
TARGET = libsqlite3.so
endif
ifeq ($(UNAME), Darwin)
TARGET = libsqlite3.dylib
else
TARGET = sqlite3.dll
endif

$(TARGET): sqlite3.o
	gcc  -o $@  $^  -shared

%.o: %.c
	gcc -O3  -o $@  -c $<  -fPIC

clean:
	rm -f *.o *.so *.dll *.exe *.dylib