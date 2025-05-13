//임이의 char를 scanf로 하나 받아서 대문자 인지 소문자 인지 출력하세요.

#include <stdio.h>

int main(void){
    // char eng;
    // printf("아무 영어를 입력하세요 : ");
    // scanf("%s",&eng);

    // if(eng >= 65 && eng <= 90){
    //     printf("대문자\n");
    // }else if(eng >=97 && eng <= 122){
    //     printf("소문자\n");
    // }
    // return 0;
    char ch;
    printf("아무 영어를 입력하세요 : ");
    scanf("%c",&ch);

    if('A'<=ch &&ch<='Z'){
        printf("%c는 대문자 입니다.",ch);
    }else if ('a'<= ch && ch <='z'){
        printf("%c는 소문자 입니다.",ch);
    }else{
        printf("%c는 영문자가 아닙니다.\n",ch);
    }
    return 0;

}