CC       = g++
CFLAGS   =
INCLUDES = -Iinclude
LIBS     = -Llib/x64 -Llib \
           -lglfw3 -lfreeglut \
           -lopengl32 -lglu32 -lgdi32 -lwinmm -luser32 \
           -static-libgcc -static-libstdc++
SOURCES  = src/main.cpp src/glad.c


all: build/main.exe
build/main.exe: $(SOURCES)
    $(CC) $(INCLUDES) $(CFLAGS) $(SOURCES) $(LIBS) -o build/main.exe
clean:
    -rm -f build/main.exe
