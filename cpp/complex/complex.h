#ifndef COMPLEX_H
#define COMPLEX_H

class Complex{
private:	//implemetation
	double re;
	double im;
	
public:	//interface
	Complex(double re, double im);	//constructor
	Complex(double re);
	Complex();						//function overloading
	~Complex();						//destructor
	
	double real();
	double imag();

	void real(double re);
	void imag(double im);
};

#endif
