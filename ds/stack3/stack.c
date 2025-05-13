#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

void initStack(Stack *ps)
{
	ps->tos = 0;
}

void push(Stack *ps, int data)
{
	//full??
	if(ps->tos == STACKSIZE){
		fprintf(stderr, "stack is full.\n");
		exit(1);
	}
	//stack[tos] = data
	//++tos;
	
	//(*ps).array[(*ps).tos] = data;
	//++(*ps).tos;
	ps->array[ps->tos] = data;
	++ps->tos;
}

int pop(Stack *ps)
{
	//empty???
	if(ps->tos == 0){
		fprintf(stderr, "stack is empty.\n");
		exit(2);
	}
	
	//--tos;
	//return stack[tos];
	
	//--(*ps).tos;
	//return (*ps).array[(*ps).tos];
	--ps->tos;
	return ps->array[ps->tos];
}

