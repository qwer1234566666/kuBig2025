def main():
    print("안녕하세요")
    print("안녕하세요"[0])
    print("안녕하세요"[1])
    print("안녕하세요"[2])
    print("안녕하세요"[3])
    print("안녕하세요"[4])
    
    say_hello = "안녕하세요"
    print(say_hello[0], end='')
    print(say_hello[1], end='')
    print(say_hello[2], end='')
    print(say_hello[3], end='')
    print(say_hello[4])

    for c in say_hello:
        print(c, end='')
    print()

    say_hello *= 3

    print(say_hello)
    print(say_hello[5:10])
    print(say_hello[-3:])
    print(say_hello[5:10:2])  # start:end:step
    print(say_hello[-1::-1])  # 거꾸로 출력!
    print("say_hello 길이:", len(say_hello))
    print("say_hello 길이:", say_hello.__len__())  # len()은 내부적으로 __len__() 호출

if __name__ == "__main__":
    main()
