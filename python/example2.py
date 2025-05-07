#섭씨->화씨 변환 프로그램 input -> casting -> 연산 -> 출력
def main():
    # 1. 입력 (input)
    celsius = input("섭씨 온도 입력: ")

    # 2. 자료형 변환 (casting)
    celsius = float(celsius)

    # 3. 연산 (섭씨 → 화씨 변환 공식: F = C × 9/5 + 32)
    fahrenheit = celsius * 9 / 5 + 32

    # 4. 출력
    print(f"섭씨 {celsius:.1f}°C는 화씨 {fahrenheit:.1f}°F 입니다.")

if __name__ == "__main__":
    main()
