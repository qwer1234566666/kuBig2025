//다른 pc에서 내 pc로 보내는것이 가능한 코드
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>

#define BUF_SIZE 30
void error_handling(char *message);

int main(int argc, char *argv[])
{
    int sock;
    int str_len;
    char buf[BUF_SIZE];

    struct sockaddr_in mul_addr;
    struct ip_mreq join_addr;

    if (argc != 3)
    {
        printf("사용법: %s <GroupIP> <port>\n", argv[0]);
        exit(1);
    }

    sock = socket(PF_INET, SOCK_DGRAM, 0); // UDP 설정
    if (sock == -1)
        error_handling("socker() 만들기 실패");

    memset(&mul_addr, 0, sizeof(mul_addr));
    mul_addr.sin_family = AF_INET;
    mul_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    mul_addr.sin_port = htons(atoi(argv[2])); // 멀티캐스트 포트

    if (bind(sock, (struct sockaddr *)&mul_addr, sizeof(mul_addr)) == -1)
        error_handling("bind 에러!!!");

    join_addr.imr_multiaddr.s_addr = inet_addr(argv[1]); // 멀티캐스트 IP
    join_addr.imr_interface.s_addr = htonl(INADDR_ANY);

    setsockopt(sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, (void *)&join_addr, sizeof(join_addr));

    while (1)
    {
        str_len = recvfrom(sock, buf, BUF_SIZE - 1, 0, NULL, 0);
        if (str_len < 0)
            break;
        buf[str_len] = 0;
        fputs(buf, stdout);
    }
    close(sock);

    return 0;
}

void error_handling(char *message)
{
    fputs(message, stderr);
    fputc('\n', stderr);
    exit(1);
}