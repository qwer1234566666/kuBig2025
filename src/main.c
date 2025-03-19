#include <avr/io.h>
#include <avr/interrupt.h>

volatile uint8_t txFlag =0;
volatile char txData = 0;

int main()
{
    uint8_t numbers[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x27, 0x7F, 0x67};
    uint8_t rxData;
    UCSR0A = 0x00;
    UCSR0B = 0x18; //0b00011000 Rx, Tx enable
    UCAR0C 0x16; //
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