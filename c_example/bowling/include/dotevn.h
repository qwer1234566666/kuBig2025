#include <dotenv.h>

int main(void)
{
    env_load(".", false);

    char *connection = getenv("DSN");
}