# 웹 스크래핑 -> beatifulsoup bs4
from urllib import request


def main():
    target = request.urlopen("https://wikipedia.org/wiki/python")
    print(target.read())


if __name__ == "__main__":
    main()