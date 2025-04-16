#ifndef RATIONAL_H
#define RATIONAL_H

class Rational {
    friend std::ostream& operator<<(std::ostream& out, const Rational& rhs);

    private:
        double num_;
        double den_;
    
    public:
        Rational(double num = 0.0, double den = 0.0); 
        
        //Rational(const Rational& ) {memberwise copy}
        // ~Rational()   {}
    
        //Rational& operator=(const Rational& ) {memberwise copy return this; }
        Rational& operator+=(const Rational& rhs);
        // +=. -=, *=, /= O
        // %=, &=, |=, ^= X
        
        bool operator==(const Rational& rhs);
        bool operator!=(const Rational& rhs);
        // >, <, >=, <=
    
        const Rational operator+(const Rational& rhs);
        const Rational operator-(const Rational& rhs);
        // -, *, /
        //% X
    
        Rational& operator++();       //prefix
        Rational operator++(int );   //postfix
        // ++, -- X
    
        // &, |,~, ^ X
    
        //type casting X
        
        //Rational *operator=&() { return this; }
        //const Rational *operator&() const { return this; }
    
        
        //default argument
        // Rational(const Rational& rhs );               //copy constructor
        // ~Rational();
    
    };
    
    #endif