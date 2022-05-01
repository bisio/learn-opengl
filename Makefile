CC = g++
CFLAGS = -c -g  	
INCLUDES = include
LDFLAGS = -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl

all:  bin bin/window bin/triangle

.PHONY: clean
.PHONY: bin

clean: 
	rm -f bin/* *.o

bin:
	mkdir -p bin

%.o: src/%.cpp $(DEPS)
	$(CC) -c -I $(INCLUDES) -o $@ $< $(CFLAGS)

%.o: src/%.c $(DEPS)
	$(CC) -c -I $(INCLUDES) -o $@ $< $(CFLAGS)

window.o: src/window.cpp 

glad.o: src/glad.c

triangle.o: src/triangle.cpp

bin/window: window.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS) 

bin/triangle: triangle.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)
