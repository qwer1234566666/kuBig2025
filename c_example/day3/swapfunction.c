#include <stdio.h>

void swap(int *pA, int *pB);

int main(void)
{
    int a,b;
    a = 100;
    b = 200;
    printf("a : %d \t b : %d\n",a,b);
    swap(&a,&b); // int *pA = &a ...
    printf("a : %d \t b : %d\n",a,b);
    return 0;
}

void swap(int *pA, int *pB)
{
    int temp = *pA;
    *pA = *pB;
    *pB = temp;
}