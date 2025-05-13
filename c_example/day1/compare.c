//정수 두숫자를 받아서 크기 관걔 0과 1로 프린트하기
#include <stdio.h>

int main(void)
{
    int a,b;
    int greater;
    printf("두 정수를 입력하세요 :");
    scanf("%d %d",&a,&b);

    greater = a > b;
    printf("greater 의 값은 %d 이다.",greater);
    return 0;
}