#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

#define F_CPU 16000000UL
#define BAUD 9600
#define MYUBRR F_CPU/16/BAUD-1

void USART_Init(unsigned int ubrr) {
    UBRR0H = (unsigned char)(ubrr >> 8);
    UBRR0L = (unsigned char)ubrr;
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);
    UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
}

void USART_Transmit(unsigned char data) {
    while (!(UCSR0A & (1 << UDRE0)));
    UDR0 = data;
}

void USART_SendString(char *str) {
    while (*str) {
        USART_Transmit(*str++);
    }
}

int main(void) {
    USART_Init(MYUBRR);
    
    while (1) {
        int sensorValue = 123;  // ADC 값을 읽어올 수도 있음
        char buffer[10];
        sprintf(buffer, "%d\n", sensorValue);
        USART_SendString(buffer);
        _delay_ms(1000);
    }
}