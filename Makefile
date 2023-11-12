CFLAGS = -lgdi32 -std=c99

all: src/pixelTest.c
	gcc -I -L src/pixelTest.c $(CFLAGS) -o build/main 