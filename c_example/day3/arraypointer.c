#include <stdio.h>

int main(void)
{
    int nums[] = {1, 2, 3, 4, 5};
    int *p;

    p= nums;//p = &nums[0] 과 같다
    for(int i=0; i<5; i++){
        printf("d 번째 원소는 : %d\n",i, nums[i]);
        printf("d 번째 원소는 : %d\n", i , p[i]);//배열처럼
        printf("d 번째 원소는 : %d\n", i , *(p+1));//포인터처럼
    }

    return 0;   
}
