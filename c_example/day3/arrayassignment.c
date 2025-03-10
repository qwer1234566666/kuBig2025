#include <stdio.h>

int main(void)
{
    int num1[] = {1, 2, 3, 4, 5};
    int num2[5];

    //num2 = num1;//안됨
    for(int i=0; i<5; i++){
        num2[i] = num1[i];
    }
    printf("num1 의 주소값 %p", num1);
    printf("num2 의 주소값 %p", num2);
    //서로 독립적인 메모리이다.
    num2[3] =14;
    //shallow copy
    int *num3;
    num3 = num1;
    printf("num3 의 주소값 %p", num3);
    num3[2] = 23;
    for(int i=0; i<5; i++){
        printf("num1 %d : %d, \n", i,num1[i] );
        printf("num2 %d : %d, \n", i,num2[i] );
        printf("num3 %d : %d, \n", i,num3[i] );
    }

    return 0;
}