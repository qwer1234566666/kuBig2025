//10개의 랜덤한 0~100 배열을 만들고 가장 높은 값을 프린트하세요.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void)
{
    int random[10];
    int max;

    srand((unsigned int)time(NULL));
    for(int i=0; i < 10; i++)
    {
        random[i] = rand() %10;
        printf("%d ," , random[i]);
    }
    printf("\n");
    max = random[0];
    for(int i=0; i < 10; i++)
    {
        if(max < random[i])
            max = random[i];
    }
    printf("max : %d\n", max);
    return 0;
}