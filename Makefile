CC = g++
CFLAGS = -c -g  	
INCLUDES = -I include -I src
LDFLAGS = -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl

all:  src/learnopengl/shader_s.gch bin bin/window bin/triangle bin/triangle-ex1 bin/triangle-ex2 bin/triangle-ex3 bin/triangle-green bin/triangle-color bin/triangle-color-ext
.PHONY: clean
.PHONY: bin

clean: 
	rm -f bin/* *.o

bin:
	mkdir -p bin

%.o: src/%.cpp $(DEPS)
	$(CC) -c $(INCLUDES) -o $@ $< $(CFLAGS)

%.o: src/%.c $(DEPS)
	$(CC) -c  $(INCLUDES) -o $@ $< $(CFLAGS)

%.gch: src/learnopengl/%.h $(DEPS)
	$(CC) -c  $(INCLUDES) -o $@ $< $(CFLAGS)

window.o: src/window.cpp 

glad.o: src/glad.c

src/learnopengl/shader_s.gch: src/learnopengl/shader_s.h

triangle.o: src/triangle.cpp

triangle-ex1.o: src/triangle-ex1.cpp

triangle-ex2.o: src/triangle-ex2.cpp

triangle-ex3.o: src/triangle-ex3.cpp

triangle-green.o: src/triangle-green.cpp

triangle-color.o: src/triangle-color.cpp

triangle-color-ext.o: src/triangle-color-ext.cpp

bin/window: window.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS) 

bin/triangle: triangle.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)

bin/triangle-ex1: triangle-ex1.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)

bin/triangle-ex2: triangle-ex2.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)

bin/triangle-ex3: triangle-ex3.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)

bin/triangle-green: triangle-green.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)

bin/triangle-color: triangle-color.o glad.o
	$(CC)  -o $@ $^ $(LDFLAGS)

bin/triangle-color-ext: triangle-color-ext.o glad.o  
	$(CC)  -o $@ $^ $(LDFLAGS)