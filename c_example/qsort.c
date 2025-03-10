//랜덤 함수 20개 프린트
//qsoft정렬 후 프린트/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int compare(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

int main (void)
{
    //랜덤함수 만들기
    int nums[20] = {0};
    // srand(time(NULL));
    // for(int i = 0; i<20; i++){
    //     nums[i] = rand() % 10;
    // }
    // for(int i = 0; i<20; i++)
    //     printf("%d,", nums[i]);
    // printf("\n");
     for(int i = 0; i<20; i++){
        scanf("%d",&nums[i]);
    }

    //qsoft soring
    qsort(nums,20,sizeof(nums[0]), compare);

    for(int i = 0; i<20; i++)
        printf("%d,", nums[i]);
    printf("\n");
    return 0;
}
