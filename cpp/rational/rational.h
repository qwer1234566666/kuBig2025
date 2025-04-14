#ifndef RATIONAL_H
#define RATIONAL_H

class Rational {
private:
    int num;
    int den;
    void reduce(); // 약분

public:
    Rational(int num , int den);
    Rational(int num);
    Rational();
    ~Rational();

    int getNum();
    int getDen();

    void SetNum(int num);
    void SetDen(int den);
};

#endif
