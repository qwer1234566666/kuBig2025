#include <stdio.h>

void local(void);
void staticVar(void);
char * global = "전역변수입니다.";
int local_count=1;

int main(void){

    printf("%s",global);
    int i;
    for(i=0;i<3;i++){
        local();
        staticVar();
    }
    return 0;
}

void local(void){
    printf("%s", global);
    int count =1;
    printf("lacal() 함수가  %d 번째 호출 되었습니다.\n",local_count );
    local_count ++;
}

void staticVar(void){
    printf("%s", global);
    static int static_count = 1;
    printf("staticVar() 함수가 %d 번째 호출 되었습니다.\n", static_count);
    static_count ++;
}