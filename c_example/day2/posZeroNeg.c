//숫자를 입력 받아서 양수, 제로, 음수를 출력하는 프로그램
// if else구문으로 만드세요.
//printf 는 한번만 쓰세요

#include <stdio.h>

int main(void){

    int num;
    // char *string;
    // printf("숫자를 넣으시오 : ");
    scanf("%d",&num);
    
    // if(num >0){
    //     string ="양수";
    // }else if(num < 0){
    //     string="음수";
    // }else{
    //     string="제로";
    // }
    printf("%d은 숫자는 %s입니다.\n",num, num >0 ? "양수" : num <0 ? "음수" : "제로");
    return 0;
}