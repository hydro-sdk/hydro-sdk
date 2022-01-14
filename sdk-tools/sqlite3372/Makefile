CC= gcc

PLATS= linux macosx mingw

default: $(PLAT)

clean:
	rm -f *.o *.a *.so *.dll *.exe *.dylib

all: %.o

%.o: %.c	
	$(CC) $(CLFAGS) -c $^

macosx: 
	$(CC) -O3 -Wall -c sqlite3.c
	$(CC) -dynamiclib -undefined suppress -flat_namespace sqlite3.o -o libsqlite3.dylib

mingw:
	$(CC) -O3 -Wall -c sqlite3.c
	$(CC) -o sqlite3.dll -s -shared sqlite3.o

linux:
	$(CC) -O3 -Wall -c -fPIC sqlite3.c
	$(CC) sqlite3.o -shared -o libsqlite3.so