#include "lcd.h"
#include <stdio.h>
#include <avr/io.h>
#include <util/delay.h>

int main()
{
    lcdInit();
    lcdClear();
    char lcdBuffer[17];
    unsigned char switch_flag = 0;
    DDRE = 0x00;//8개의 핀을 모두 인폿!
    PORTE = 0x00; //출력! - 풀업을 실행한다
    DDRC = 0x0F;
    //PINE
    while(1)
    {
        if(PINE >>4)
        {
            switch_flag = PINE >> 4;
        }
        PORTC = switch_flag;
        snprintf(lcdBuffer, sizeof(lcdBuffer),"SW : 0x%02X, %c",switch_flag, '0'+switch_flag);
        lcdGotoXY(0, 0);
        lcdPrint(lcdBuffer);
    }
    return 0;
}