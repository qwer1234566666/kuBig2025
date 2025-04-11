#ifndef STACK_H
#define STACK_H

class Stack {
private:    //implementation
    int *pArr;
    int size;
    int tos;

public:     //interface
    //void initStack(int size);
    //void cleanupStack();
    Stack(int size);   //constructor
    ~Stack();     //destructor
    
    void push(int data);
    int pop();
    
};

#endif