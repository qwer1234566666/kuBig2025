#include <stdio.h>

int sumArray(const int *pArr, int size)
{
    int sum = 0;
    for (int i = 0; i < size; i++){
        sum += pArr[i];
    }
    return sum;
}

int sumArray2(int arr[])
{
    int sum = 0;
    for (int i = 0; i< sizeof(arr) / sizeof(arr[0]); i++){
        sum += *arr++;
    }
    return sum;
}

int main(void)
{
    int nums[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    int sum = sumArray2(nums);

    printf("sum : %d\n", sum);
    return 0;
}