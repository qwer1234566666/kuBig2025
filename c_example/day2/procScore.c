//n[MAX] 개의 숫자를 배열로 만들어서(랜덤) MAXC 평균을 소수점 2자리 까지 출력
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MAX 5
#define MAXC 100

int main(void)
{   
    int MAX_input;
    int score[MAX_input];
    printf("배열의 길이를 넣으세요 :");
    scanf("%d", &MAX_input);
    int sum =0;
    double avg;
    srand((unsigned int)time(NULL));
    for(int i = 0; i < MAX_input; i++)
    {
        score[i] = rand() % (MAXC +1);
        printf("%d , ", score[i]);
        sum += score[i];
    }
    printf("\n");
    avg = (double)sum/ MAX_input;
    printf("평균은 : %.2f 입니다.\n", avg);
}
