#ifndef BOUNDARY_ARRAY_H
#define BOUNDARY_ARRAY_H
#include "safeArray.h"

class BoundArray : public SafeArray {
private:
    int low_;

public:
    explicit BoundArray(int size =Array:: ARRAY_SIZE);
    BoundArray(int low, int upper);
    BoundArray(const BoundArray& rhs);
    virtual ~BoundArray();

    BoundArray& operator=(const BoundArray& rhs);

    bool operator==(const BoundArray& rhs) const;

    int& operator[](int index);
    const int& operator[](int index) const;

    int lower() const;
    int upper() const;

};

#endif