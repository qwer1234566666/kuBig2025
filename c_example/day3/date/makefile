TARGET = date
all : ${TARGET}

serial : main.o date.o
	cc -o date main. date.o

main.o : main.c date.h
	cc -c main.c

myrandom.o : date.c
	cc -c date.c

clean :
	rm ${TARGET} main.o date.o