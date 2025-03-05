#include <stdio.h>

int main(void)
{
    int num;
    printf("write number : ");
    scanf("%d",&num);

    int is0dd;
    is0dd = (num % 2==1);
    printf("num : %d \t is0dd : %d\n", num,num %2);
    return 0;
}