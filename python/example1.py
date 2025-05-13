#파이썬으로 구구단 출력하기
def main():
    for d in range(2, 10):  # 2단부터 9단까지
        print(f"\n--- {d}단 ---")
        for i in range(1, 10):  # 각 단에 대해 1~9까지 곱함
            print(f"{d} x {i} = {d * i}")

if __name__ == "__main__":
    main()
