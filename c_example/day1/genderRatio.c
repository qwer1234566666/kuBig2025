#include <stdio.h>

int main(void)
{
    int man , woman;
    double sum, manRate , womanRate;

    // 입력 받는 코드
    printf("Input man, woman:");
    scanf("%d %d", &man, &woman);
    //남여 전체수
    sum = man + woman;
    // 연산 받는 코드
    //남자 비율
    manRate = (man/sum)*100;
    //여자비율
    womanRate = (woman/sum) *100;

    printf("남자의 수는 % d 명이고 여자의 수는 %d이다.",man,woman);
    printf("총 수는 %.f명\n 남자의 비율은 %.2f%%\n 여자의 비율은 %.2f%%\n", sum, manRate, womanRate);

    return 0;
}