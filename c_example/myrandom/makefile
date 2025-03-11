TARGET = myrandom
all : ${TARGET}

serial : main.o myrandom.o
	cc -o myrandom main. myrandom.o

main.o : main.c myrandom.h
	cc -c main.c

myrandom.o : myrandom.c
	cc -c myrandom.c

clean :
	rm ${TARGET} main.o myrandom.o