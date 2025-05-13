// 10개 짜리 배열을 랜덤으로 0~100 만들어서 int를 하나의 scanf로 받는다.
//같은 원소가 있는지 index가 몇 번째 인지 프린트 하시오
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void)
{
    int random[10];
    int value;
    srand((unsigned int)time(NULL));
    for(int i=0; i < 10; i++)
    {
        random[i] = rand() %10;
        printf("%d ,", random[i]);
    }

    printf("\n찾을 숫자를 입력하세요 :");
    scanf("%d",  &value);
    int i;
    for(i=0; i < 10; i++)
    {
        if(value == random[i])
            break;
    }
    if(i < 10)
    {
        printf("%d 숫자를 찾았다. 인덱스는  %d 이다 \n", value,i);
    }
    else
    {
        printf("%d 숫자를 못 찾았다.\n", value);
    }
    return 0;
}