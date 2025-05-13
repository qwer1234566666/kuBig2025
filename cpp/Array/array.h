#ifndef ARRAY_H
#define ARRAY_H


class Array {
private:
    static const int ARRAY_SIZE;
    
    int *pArr_;
    int size_;
    
public:
    static int getDefaultArraySize();

    //Array();
    explicit Array(int size = 100);
    Array(const int *pArr, int size);
    Array(const Array& rhs);
    ~Array();

    Array& operator=(const Array& rhs);

    bool operator==(const Array& rhs) const;

    int& operator[](int index);
    const int& operator[](int index) const;

    int size() const;
};

#endif