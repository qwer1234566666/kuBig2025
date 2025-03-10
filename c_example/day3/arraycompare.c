//원소의 같음을 비교
#include <stdio.h>

int main(void)
{
    int num1[] = {1, 2, 3, 4, 5};
    int num2[] = {1, 2, 3, 4, 5};

    if(num1 == num2)
    {
        printf("num1과 num2는 같다.\n");
    }
    else
    {   
        printf("num1과 num2는 다르다.\n");
    }

    int i;
    for (i=0; i<5; i++)
    {
        if(num1[i] != num2[i])
            break;
    }
    if(i ==5 )
        printf("num1 과 num2의 원소는 모두 같다.\n");
    else
        printf("num1 과 num2의 원소는 같지 않다.\n");
    return 0;
}