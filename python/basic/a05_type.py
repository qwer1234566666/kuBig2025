def main():
    abc = str() # str class 클래스로 객체 선언! 정식
    abc2 = "hi" # str class 파이썬의 약식
    print(type(abc))
    print(type(abc2)) # 파이썬에서 빌드인 class 에 대해서는 소문자로 시작!
    abc = 4
    print(type(abc))
    abc = 3.14
    print(type(abc)) # float
    abc = [1,2, "three"] # STL 벡터와 비슷.

    print(type(abc)) # list
    # ...

if __name__ == "__main__":
    main()