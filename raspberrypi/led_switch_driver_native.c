//  cc -o led_switch_driver_native led_switch_driver_native.c
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void)
{
    int fd;
    char buf[16] = {0};
    fd = open("/dev/led_switch_driver", O_RDWR);
    if (fd < 0)
    {
        printf("driver open fail\n");
        return -1;
    }
    
    for (int i = 0; i < 20; ++i)
    {
        read(fd, &buf, 16);
        printf("sw1: %d, sw2: %d, sw3: %d, sw4: %d\n", buf[0], buf[1], buf[2], buf[3]);
        
        // 스위치 상태를 LED로 반영
        write(fd, &buf, 16);
        sleep(1);
    }
    
    close(fd);
    return 0;
}