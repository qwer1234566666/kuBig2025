#include <stdio.h>
 
typedef struct {
    int p1, p2;
    int score;
    int total;
    int bonus;
} Score;
 
void print_hit(int x, int y);
 
int main()
{
    int i, j;

    Score s[12] = {{0, }, };
    
    for (i = 1; i < 12; i++) {
        printf("%d회 1차 : ", i);
        scanf("%d", &s[i].p1);
 
        if (s[i].p1 < 10) {
            if (i == 11 && s[10].p1 != 10) {}
            else {
                printf("%d회 2차 : ", i);
                scanf("%d", &s[i].p2);
            }
            
        }
 
        if (i == 11)                        s[i].bonus = 0;
        else if    (s[i].p1 == 10)                s[i].bonus = 2;    // strike


        else if (s[i].p1 + s[i].p2 == 10)    s[i].bonus = 1;    // spare
        else                                s[i].bonus = 0;
        
        if (s[i].bonus == 0) s[i].score = s[i].p1 + s[i].p2;
 
        if (s[i-1].bonus == 1) {
            s[i-1].score = s[i-1].p1 + s[i-1].p2 + s[i].p1;
            s[i-1].bonus = 0;
        }
        else if (s[i-1].bonus == 2 && s[i].bonus != 2) {
            s[i-1].score = s[i-1].p1 + s[i-1].p2 + s[i].p1 + s[i].p2;
            s[i-1].bonus = 0;
        }
 
        if (s[i-2].bonus == 2) {
            s[i-2].score = s[i-2].p1 + s[i-2].p2 + s[i-1].p1 + s[i-1].p2 + s[i].p1;
            s[i-2].bonus = 0;
        }
        
        for (j = 1; j <= i; j++) s[j].total = s[j-1].total + s[j].score;    // 총점 계산 
 
        for (j = 1; j < 12; j++) printf("   %2d회  ", j);    printf("\n");
 
        for (j = 1; j <= i; j++) print_hit(s[j].p1, s[j].p2);    printf("\n");
 
        for (j = 1; j <= i; j++) printf("   %3d   ", s[j].total); printf("\n");
        
        if (i == 10 && s[i].p1 + s[i].p2 < 10) break;
    }

    return 0;
}
 
void print_hit(int x, int y)
{
    char b = ' ';
 
    if        (x == 10)        b = 'X';
    else if (x + y == 10)    b = '/';
    else if (x + y == 0)    b = 'G';
 
    printf("  %2d %2d%c ", x, y, b);
}