vcpkgInclude = C:\Users\Main\Downloads\vcpkg\installed\x64-windows\include
vcpkgBin = C:\Users\Main\Downloads\vcpkg\installed\x64-windows\bin

CFLAGS = -lgdi32 -lraylib -std=c99 -lopengl32 -lglu32 -lfreeglut -lglew32 -lglfw3 -lfreetype -lsdl2 

all: pixelTest.c
	gcc -I $(vcpkgInclude) -L $(vcpkgBin) pixelTest.c $(CFLAGS) -o build/main 