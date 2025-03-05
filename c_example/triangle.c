#include <stdio.h>

int main(void)
{
    int length;
    int height;
    int area;

    printf("Enter triangle's length :");
    scanf("%d",&length);
    printf("Enter height's length :");
    scanf("%d",&height);
    area = length * height /2;
    printf(" triangle's area is : %d\n", area);

    return 0;
}