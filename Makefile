CFLAGS = -lgdi32 -std=c99

all: pixelTest.c
	gcc -I -L pixelTest.c $(CFLAGS) -o build/main 