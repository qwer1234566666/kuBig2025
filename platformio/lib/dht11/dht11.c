#include "dht11.h"

uint8_t DHT11_Read(uint8_t *temperature, uint8_t *humidity) {
    uint8_t data[5] = {0, 0, 0, 0, 0};
    
    // 1. DHT11에 신호를 보냄
    DHT11_DDR |= (1 << DHT11_PIN);   // 출력 모드
    DHT11_PORT &= ~(1 << DHT11_PIN); // LOW 신호 전송
    _delay_ms(18);                   // 18ms 이상 유지
    DHT11_PORT |= (1 << DHT11_PIN);  // HIGH
    _delay_us(30);                   

    // 2. DHT11 응답 대기
    DHT11_DDR &= ~(1 << DHT11_PIN);  // 입력 모드
    _delay_us(40);
    if (DHT11_PINR & (1 << DHT11_PIN)) return 1;
    _delay_us(80);
    if (!(DHT11_PINR & (1 << DHT11_PIN))) return 2;
    _delay_us(80);

    // 3. 데이터 읽기 (40비트)
    for (uint8_t i = 0; i < 5; i++) {
        for (uint8_t j = 0; j < 8; j++) {
            while (!(DHT11_PINR & (1 << DHT11_PIN))); // LOW 대기
            _delay_us(30);
            if (DHT11_PINR & (1 << DHT11_PIN))
                data[i] = (data[i] << 1) | 1;
            else
                data[i] = (data[i] << 1);
            while (DHT11_PINR & (1 << DHT11_PIN)); // HIGH 대기
        }
    }

    // 4. 체크섬 확인
    if ((data[0] + data[1] + data[2] + data[3]) != data[4]) return 3;

    *humidity = data[0];
    *temperature = data[2];

    return 0;  // 정상
}
