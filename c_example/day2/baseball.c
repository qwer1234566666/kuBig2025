//숫자 3개를 만드시오(랜덤) (서로 다른 숫자 0~9)
//숫자 3개를 입력 받으세요
//위치와 숫자가 같으면 stlike +1
//위치가 다르지만 숫자가 같으면 ball+1
//모든 데이터의 위치와 숫자가 동일하면 성공
//시도 횟수를 출력하는 프로그램을 만드시오
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void)
{
    //랜덤입력
    int num[3] ={0};
    //직접입력
    int choice[3]={0};
    int try =0; //도전
    int strike =0; //스트라이크
    int ball =0; //볼

    srand(time(NULL));
    for(int i=0; i<3; i++)
    {
        num[i]= rand() % 10;

        for(int j=0; j<i; j++)
		{
			if(num[i] == num[j])
			{
				i--;
				break;
			}
		}
    }
    while (strike < 3)
    {
        strike = 0;
		ball = 0;
		try++;

        for(int i=0; i<3; i++)
		{
			printf("0~9 사이의 숫자를 입력 : ");
			scanf("%d", &choice[i]);
			
			// 예외처리(0~9사이의 숫자만 입력) 
			if(choice[i]<0 || choice[i] > 9)
			{
				printf("0~9의 숫자만 입력해주세요.\n");
				i--; 
			} 
			else
			{
				// 중복 제거 
			 	for(int j=0; j<i; j++)
				{
					if(choice[i]== choice[i])
					{
						printf("동일한 숫자 x") ;
						i--;
					}
				}
			}
            for(i=0; i<3; i++)
            {
			    for(int j=0; j<3; j++)
			    {
                    if(num[i] == choice[i] && i == j)
                    {
                        strike += 1;
				    }
				    else if(num[i] == choice[j] && i != j)
				    {   
                        ball += 1;
				    }
                }
            }
            if(strike == 3)
            {
			printf("끝");
		    }
            else
		    {
			printf("\n-------------------------------------\n");
			printf("스트라이크 = %d \t 볼 = %d \t \n", strike, ball);
			printf("-------------------------------------\n"); 
		    }
        }
        printf("%d 회차입니다.\n",try);
    }
    return 0;
}