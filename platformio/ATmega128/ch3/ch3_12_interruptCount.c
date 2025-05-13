//인터럽트로 FND 점멸
//INT5 phase1 -> phase2 or phase 2 ->phase 1
// phase 1 : FND가 빠르게 상승하는 코드 ms 100
// phase 2 : FND을 순간 멈추게함
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

volatile uint8_t timestop = 0;// 인터럽트에서 쓸변수

int main()
{
    uint8_t numbers[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x27, 0x7F, 0x67};
    uint8_t count = 0;
    DDRA = 0xFF;

    EIMSK  = 0x20; //0b10100000 INT5, INT7
    EICRB = _BV(ISC50) | _BV(ISC51);
    sei();

    while (1)
    {
        if(timestop == 0)
        {
            PORTA = numbers[count];
            count = (count + 1)% 10; 
        }
        _delay_ms(100);
    }
    return 0;
}

ISR(INT5_vect)
{
    cli();
    timestop ^= 1;
    sei();
}