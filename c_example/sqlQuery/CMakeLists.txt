cmake_minimum_required(VERSION 3.10)
project(bookSql)

#set(CMAKE_C_COMPILER "/usr/bin/gcc")
add_executable(bookSql /home/yjh/kubig2025/c_example/sqlQuery/bookSql.c)
#add_executable(bookSql bookSql.c)
target_include_directories(bookSql PRIVATE /usr/include/mysql)
target_link_directories(bookSql PRIVATE /usr/lib/mysql)
target_link_libraries(bookSql PRIVATE mysqlclient)

