#include<iostream>
#include "queue.h"


int main(){

    Queue q1(100), q2(10);
    //initQueue(100);
    //initQueue(10);


    q1.push(100);
    q1.push(200);
    q1.push(300);

    //printf("q1 1st pop() : %d\n", pop(&q1));
    std::cout << "q1 1st pop() : " << q1.pop() << std::endl;
    std::cout << "q1 2nd pop() : " << q1.pop() << std::endl;
    std::cout << "q1 3rd pop() : " << q1.pop() << std::endl;

    q2.push(900);
    q2.push(800);
    q2.push(700);
    
    std::cout << "q2 1st pop() : " << q2.pop() << std::endl;
    std::cout << "q2 2nd pop() : " << q2.pop() << std::endl;
    std::cout << "q2 3rd pop() : " << q2.pop() << std::endl;

    //q1.cleanupQueue();
    //q2.cleanupQueue();
    return 0;
}
