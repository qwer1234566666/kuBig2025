#include "rational.h"
#include <cassert>

Rational::Rational(int num, int den) 
{
    assert(den !=0);
    this->num = num;
    this->den = den;
}

Rational::Rational(int num)
{
    this->num = num;
    this->den = 1;
}

Rational::Rational()
{
    this->num = 0;
    this->den = 1;
}

Rational::~Rational()
{

}

int Rational::getNum()
{
    return this->num;
}

int Rational::getDen()
{
    return this->den;
}

void Rational::SetNum(int num)
{
    this->num = num;
}

void Rational::SetDen(int den)
{
    assert(this->den);

    this->den = den;
}