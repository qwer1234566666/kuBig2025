import keyword

def main():
    print(keyword.kwlist)

# 이 파일이 실행될 때만 main()이 실행되게 함
# import하면 main()은 실행되지 않음
if __name__ == "__main__":
    main()
