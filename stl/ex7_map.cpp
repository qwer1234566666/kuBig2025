#include <iostream>
#include <map>
#include <string>
using namespace std;

int main()
{
    map<string, string> dic = {{"power", "힘"}, {"money", "돈"}}; // 초기화
    dic.insert(make_pair("love", "사랑"));
    dic["cherry"] = "체리"; // map 원소 추가

    dic.erase("love"); // map 원소 지우기

    cout << "저장된 단어의 갯수 : " << dic.size() << endl;
    string eng;
    while (true)
    {
        cout << "찾고 싶은 단어 >> ";
        getline(cin, eng);
        if (eng == "exit")
            break;
        if (dic.find(eng) == dic.end())
            cout << "없음" << endl;
        else
            cout << dic[eng] << endl;
    }

    for (const auto &[eng, kor] : dic)
    {
        std::cout << "영어 : " << eng << " 한국어 : " << kor << endl;
    }

    return 0;
}