#include <arpa/inet.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void error_handling(char *message);

int main(int argc, char *argv[])
{
    int i;
    struct hostent *host;
    if (argc != 2)
    {
        printf("사용법: %s <addr>\n", argv[0]);
        exit(0);
    }
    host = gethostbyname(argv[1]);
    if (!host)
        error_handling("gethost... error");

    printf("공식 이름: %s \n", host->h_name);

    for (i = 0; host->h_aliases[i]; ++i)
        printf("Aliases %d: %s \n", i + 1, host->h_aliases[i]);

    printf("주소 타입: %d \n", host->h_addrtype);

    for (i = 0; host->h_addr_list[i]; ++i)
        printf("주소 %d : %s \n", i + 1, inet_ntoa(*(struct in_addr *)host->h_addr_list[i]));
    return 0;
}

void error_handling(char *message)
{
    fputs(message, stderr);
    fputc('\n', stderr);
    exit(1);
}