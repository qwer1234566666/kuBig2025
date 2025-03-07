#include <stdio.h>

int main(void)
{
    double temp[12] = {0};
    for (int i=0; i<12; i++)
    {
        scanf("%lf",&temp[i]);
    }
    double sum =0.0;
    for (int i=0; i <12; i++)
    {
        sum += temp[i];
    }
    double avg = 0.0;
    avg = sum/12.0;

    printf("20222년의 평균 기온은 : %.2f °C 입니다. \n", avg );
    return 0;
}