#ifndef STACK_H
#define STACK_H

//extern const int STACK_SIZE;

class Stack {
private:
    static const int STACK_SIZE;    

    int *pArr_;
    int size_;
    int tos_;

    Stack(const Stack& );
    Stack& operator=(const Stack& );

public:     
    explicit Stack(int size = STACL_SIZE);
    ~Stack();

    
};

#endif