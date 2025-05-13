#include "boundArray.h"


BoundArray::BoundArray(int size)
: SafeArray(size)
{

}

BoundArray::BoundArray(int low, int upper)
: SafeArray(upper - low), low_(low)
{

}

BoundArray::BoundArray(const BoundArray& rhs)
: SafeArray((SafeArray)rhs), low_(rhs.low_)
{

}

BoundArray::~BoundArray()
{

}

BoundArray& BoundArray::operator=(const BoundArray& rhs)
{
    if (this != &rhs){
        this->SafeArray::operator=((SafeArray)rhs);
        low_ = rhs.low_;
    }
    return *this;
}

bool BoundArray::operator==(const BoundArray& rhs) const
{
    return low_ == rhs.low_ && this->SafeArray::operator==((SafeArray)rhs);
}

int& BoundArray::operator[](int index)
{
    return this->SafeArray::operator[](index - low_);
}

const int& BoundArray::operator[](int index) const
{
    return this->SafeArray::operator[](index - low_);
}

int BoundArray::lower() const
{
    return low_;
}
   
int BoundArray::upper() const
{
    return low_ + this->SafeArray::size();
}   