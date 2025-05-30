#include </home/yjh/kubig2025/opencv/part2/color.hpp>
#include <chrono>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <thread>
#include <vector>

using namespace std;
using namespace cv;

String folderPath = "/home/yjh/kubig2025/opencv/data/";

int main()
{
    VideoCapture cap(0);
    if (!cap.isOpened()) {
        cerr << "카메라 열기 실패!" << endl;
        return -1;
    }

    Mat img, edge;
    int low_v = 50, high_v = 150;

    namedWindow("img1");
    createTrackbar("lowedge", "img1", &low_v, 255);
    createTrackbar("highedge", "img1", &high_v, 255);

    while (true)
    {
        cap >> img;
        if (img.empty()) {
            cerr << "카메라 프레임 읽기 실패!" << endl;
            break;
        }

        Canny(img, edge, low_v, high_v);
        imshow("img1", edge);

        if (waitKey(33) == 27)
            break;
    }

    destroyAllWindows();
    return 0;
}
