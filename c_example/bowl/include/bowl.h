#include <mysql/mysql.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// MySQL 연결 정보
typedef struct
{
    MYSQL *conn;
    char *host;
    char *user;
    char *pass;
    char *db;
    int port;
} MySQLConnection;
