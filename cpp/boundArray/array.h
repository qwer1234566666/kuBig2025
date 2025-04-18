#ifndef ARRAY_H
#define ARRAY_H


class Array {
private:
    int *pArr_;
        
protected:
    static const int ARRAY_SIZE;
    
    int size_;

public:
    static int getDefaultArraySize();

    //Array();
    explicit Array(int size = 100);
    Array(const int *pArr, int size);
    Array(const Array& rhs);
    virtual~Array();

    Array& operator=(const Array& rhs);

    bool operator==(const Array& rhs) const;

    virtual int& operator[](int index);
    virtual const int& operator[](int index) const;

    int size() const;
};

#endif