#include<iostream>
#include "stack.h"

int main(){
    Stack s1(10);
    Stack s2;

    s1.push(100);
    s1.push(200);
    s1.push(300);

    std::cout << "s1 capacity : " << s1.size() << std::endl; 
    std::cout << "s1 remain : " << s1.remain() << std::endl; 

    while (!s1.isEmpty()){
        std::cout << s1.pop() << std::endl; 
    }

    //s1 = s2;

    
    /*


    std::cout << "s1 1st pop() : " << s1.pop() << std::endl; 
    std::cout << "s1 2nd pop() : " << s1.pop() << std::endl; 
    std::cout << "s1 3rd pop() : " << s1.pop() << std::endl; 
    
    s2.push(900);
    s2.push(800);
    s2.push(700);
    std::cout << "s2 1st pop() : " << s2.pop() << std::endl; 
    std::cout << "s2 2nd pop() : " << s2.pop() << std::endl; 
    std::cout << "s2 3rd pop() : " << s2.pop() << std::endl; 
    */
    return 0;
}