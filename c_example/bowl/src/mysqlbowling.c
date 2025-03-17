
bool initMySQL(MySQLConnection *mysql)
{
    MYSQL *conn;
    char *host = "localhost";
    char *user = "myUser";
    char *pass = "0000";
    char *db = "mydb";
    int port = 3306;
    int choice;

    // 연결
    conn = mysql_init(NULL); // DB 연결 요청 준비
    if (mysql_real_connect(conn, host, user, pass, db, port, NULL, 0))
        printf("MySQL 연결 성공\n");
    else
    {
        printf("MySQL 연결 실패\n");
        return 1;
    }

    mysql_close(conn);

    return 0;
}



void waitEnter(void)
{
    printf("엔터를 쳐 주세요....\n");
    char temp;
    while (temp != '\n')
        scanf("%c%*c", &temp);
}