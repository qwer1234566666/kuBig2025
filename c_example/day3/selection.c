//랜덤 함수 20개 프린트
//선택정렬 후 프린트/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main (void)
{
    //랜덤함수 만들기
    int nums[20] = {0};
    srand(time(NULL));
    for(int i = 0; i<20; i++){
        nums[i] = rand() % 10;
    }
    for(int i = 0; i<20; i++)
        printf("%d,", nums[i]);
    printf("\n");

    //selection soring
    for(int i=0; i<19; i++){
        for(int j =i+1; j<20;j++)
        {
            if(nums[i]>nums[j]){
                int temp = nums[i];
                nums[i] = nums[j];
                nums[j] = temp;
            }
        }
    }
    for(int i = 0; i<20; i++)
        printf("%d,", nums[i]);
    printf("\n");
    return 0;
}
