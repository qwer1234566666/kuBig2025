#ifndef RATIONAL_H
#define RATIONAL_H
#include <iostream>

class Rational {
    friend std::ostream& operator<<(std::ostream& out, const Rational& rhs);

    private:
        double num_;
        double den_;
    
        void reduce();          //helper func. tool func.
    
    public:
    
        Rational(double num = 0, double den = 1); 

        bool operator==(const Rational& rhs) const;
        bool operator!=(const Rational& rhs) const;

        const Rational operator+(const Rational& rhs) const;

        int num() const;
        int den() const;

        void num(int num);
        void den(int den);

        //Rational& operator=(const Rational& ) {memberwise copy return this; }
        //Rational(const Rational& ) {memberwise copy}
        //Rational *operator=&() { return this; }
        //const Rational *operator&() const { return this; }
        // Rational(const Rational& rhs );               //copy constructor
        // ~Rational()   {}
    
    };
    
    #endif