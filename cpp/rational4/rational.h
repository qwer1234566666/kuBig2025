#ifndef RATIONAL_H
#define RATIONAL_H

class Rational {
    //friend std::ostream& operator<<(std::ostream& out, const Rational& rhs);

    private:
        double num_;
        double den_;
    
    public:
        Rational(double num = 0, double den = 1); 

        /*Rational& operator+=(const Rational& rhs);
        
        bool operator==(const Rational& rhs);
        bool operator!=(const Rational& rhs);
    
        const Rational operator+(const Rational& rhs);
        const Rational operator-(const Rational& rhs);
    
        Rational& operator++();       //prefix
        Rational operator++(int );   //postfix

        //Rational& operator=(const Rational& ) {memberwise copy return this; }
        //Rational(const Rational& ) {memberwise copy}
        //Rational *operator=&() { return this; }
        //const Rational *operator&() const { return this; }
        // Rational(const Rational& rhs );               //copy constructor
        // ~Rational()   {}*/
    
    };
    
    #endif