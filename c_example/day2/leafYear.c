#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int year;
    while(true)
    {
        printf("연도를 넣으세요 :  ");
        scanf("%d",&year);
        // if(year %4 ==0 ){
        // printf("%d 년도는 운년입니다.\n",year);
        // }else{
        // printf("%d 년도는 평년입니다.\n",year);
        // }
        printf("%d 년도는 %s입니다.\n", year, year % 4? "평년" : "운년");
        if(year ==0 )
            break;
    }
}