#문자열을 입력 받아서 단어를 카운트해서 결과를 출력
import string

def main():
    # 1. 파일 읽기
    with open("/home/yjh/kubig2025/python/data.txt", "r", encoding="utf-8") as file:
        text = file.read()

    # 2. 소문자로 통일하고 구두점 제거
    text = text.lower()
    text = text.translate(str.maketrans('', '', string.punctuation))

    # 3. 단어 분리
    words = text.split()

    # 4. 사용자로부터 검색할 단어 입력 받기
    target = input("찾고 싶은 단어를 입력하세요: ").lower()

    # 5. 단어 빈도수 세기
    count = words.count(target)

    # 6. 출력
    print(f'"{target}" 단어는 총 {count}번 등장합니다.')

if __name__ == "__main__":
    main()
