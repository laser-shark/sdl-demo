BIN=sdl_demo
FLAGS=-std=c++11 -Wall -Werror -pedantic
LIBS=`sdl2-config --cflags --libs`

SFILES=main3.cpp gui.cpp
HFILES=

${BIN}: ${SFILES} ${HFILES}
	g++ -o ${BIN} ${FLAGS} ${SFILES} ${LIBS} -lSDL2_ttf

.PHONY:
clean:
	rm ${BIN}
