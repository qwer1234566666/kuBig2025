#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int sumArray(int pArray[], int size);

int main(void)
{
    int num[20] = {0};
    srand(time(NULL));
    for(int i=0; i<20; i++)
    {
        num[i] = rand() % 101;
        printf("%d, ",num[i]);
    }
    printf("\n");

    int sum = sumArray(num ,sizeof(num)/sizeof(int));
    printf("sum : %d",sum);
    return 0;
}

int sumArray(int pArray[], int size)
{
    //20 = sizeof(num)/sizeof(int) X
    //배욜울 넘길때 반드시 주소와 사이즈를 같이 넣어야 한다.
    int sum =0;
    for(int i=0; i<size; i++){
        sum += pArray[i];
    }
    return sum;
}