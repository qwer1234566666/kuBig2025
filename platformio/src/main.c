    #include <avr/io.h>
    #include <util/delay.h>
    #include <stdio.h>
    #include "dht11.h"
    #include "clcd.h"
    #include "i2c_master.h"

    #define F_CPU 16000000UL

    int main(void) {
        uint8_t temperature, humidity;
        char buffer[16];

        i2c_init();
        i2c_lcd_init();  // I2C LCD 초기화

        i2c_lcd_string(0, 0, "DHT11 Sensor");
        _delay_ms(2000); // 초기 메시지 출력 후 대기
        i2c_lcd_command(0x01); // 화면 초기화

        while (1) {
            if (DHT11_Read(&temperature, &humidity) == 0) {
                // 온도 및 습도 LCD 출력
                snprintf(buffer, sizeof(buffer), "Temp: %dC", temperature);
                i2c_lcd_string(0, 0, buffer);

                snprintf(buffer, sizeof(buffer), "Humi: %d%%", humidity);
                i2c_lcd_string(1, 0, buffer);

            } else {
                i2c_lcd_string(0, 0, "Read Error!");
            }

            _delay_ms(2000); // 2초마다 업데이트
        }
    }