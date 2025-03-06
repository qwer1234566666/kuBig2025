#include <stdio.h>

int main()
{
    int fahr = 59;
    double celsius;

    printf("fahr : %d\n",fahr);
    celsius = (fahr -32)*5/9;

    printf("celsius : %f\n",celsius);
    return 0;
}