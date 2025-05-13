#include "lcd.h"
#include <avr/delay.h>
#include <avr/io.h>

int main(void)
{
    uint8_t pwmDuty = 60, cntDr=0;
    DDRD = _BV(PD4) | _BV(PD5);//출력 설정
    DDRB = _BV(PB5);//M1 enable 핀

    TCCR1A = _BV(COM1A1) | _BV(WGM11);
    TCCR1B = _BV(CS11) | _BV(WGM12) | _BV(WGM13);
    //fast pwm 분주비 8 ->160Whz/8 = 2MHz
    ICR1 = 800;//2MHz : 1초 == 800Hz : x초 ...2500Hz
    OCR1A = 8*pwmDuty;//500 카운트 하는데 500 반까지 ->5V 70%

    lcdInit();
    lcdGotoXY(0,0);
    lcdPrintData("Duty : ",7);

    PORTD |= _BV(PD4); //M1 정회전
    PORTB |= _BV(PB5);  //M1 회전

    while(1)
    {
        if(cntDr)
        {
            pwmDuty = pwmDuty - 5;
            if(pwmDuty < 50)
                cntDr = 0;
        }else{
            pwmDuty = pwmDuty + 5;
            if(pwmDuty >99)
                cntDr = 1;
        }
        OCR1A = 8 * pwmDuty;//0~100 
        lcdGotoXY(7,0);
        lcdDataWrite((pwmDuty/10)%10 + '0');
        lcdDataWrite(pwmDuty%10 + '0');
        lcdDataWrite('%');
    }
    return 0;
}