#include <stdio.h>

int main()
{
    char ch1 ='A';
    char ch2 = 65;
    char ch3;
    printf("ch1 : %c Number : %d\n",ch1,ch2);
    printf("ch2 : %c Number : %d\n",ch2,ch1);
    printf("input a character :");
    scanf("%hhd",&ch3);
    printf("ch3 : %c Number : %d\n",ch3,ch3);

    return 0;
} 