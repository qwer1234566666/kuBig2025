#include <iostream>
#include "rational.h"

std::ostream& operator<<(std::ostream& out, const Rational& rhs)
{
    return out << "(" << rhs.num_ << "," << rhs.den_ << "i)";
}

Rational::Rational(double num, double den)
{
    num_ = num;
    den_ = den;
}

Rational& Rational::operator+=(const Rational& rhs)
{
    num_ += rhs.num_;
    den_ += rhs.den_;

    return *this;
}

bool Rational::operator==(const Rational& rhs)
{
    return num_ == rhs.num_ && den_ == rhs.den_;
}

bool Rational::operator!=(const Rational& rhs)
{
    // return !(*this == rhs);
    return !this->operator==(rhs);
    
    //return num_ != rhs.num_ || den_ != rhs.den_;
}

const Rational Rational::operator+(const Rational& rhs)
{
    Rational result(num_ + rhs.num_, den_ + rhs.den_);

    return result;
}

const Rational Rational::operator-(const Rational& rhs)
{
    Rational result(num_ - rhs.num_, den_ - rhs.den_);

    return result;
}

Rational& Rational::operator++()
{
    num_ += 1.0;

    return *this;
}

Rational Rational::operator++(int )
{
    Rational tmp = *this;
    num_ += 1.0;

    return tmp;
}