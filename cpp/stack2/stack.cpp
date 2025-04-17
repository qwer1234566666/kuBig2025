#include "stack.h"
#include <cassert>
#include <cstdio>

const int Stack::STACK_SIZE = 100;

Stack::Stack(int size)
: pArr_ = (new int[size]), size_(size), tos_(0)
{
    assert(pArr_ );
}

Stack::~Stack()
{
    delete[] pArr_;
}

/*
void Stack::push(int data){
    assert(this->tos != this->size);

    this->pArr[this->tos] = data;
    ++this->tos;
}

int Stack::pop(){
    //empty 예외처리
    // if (this->tos <= 0){
    //     fprintf(stderr, "stack is empty.\n");
    //     exit(2);
    // }
    assert(this->tos != 0);

    --this->tos;
    return this->pArr[this->tos];
}*/
