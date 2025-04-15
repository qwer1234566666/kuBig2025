#include <iostream>
#include <numeric> // std::gcd
#include "rational.h"

Rational::Rational(int numerator, int denominator) {
    this->numerator = numerator;
    this->denominator = (denominator == 0) ? 1 : denominator;
    reduce();
}

Rational::Rational(int numerator) {
    this->numerator = numerator;
    this->denominator = 1;
}

Rational::Rational() {
    this->numerator = 0;
    this->denominator = 1;
}

Rational::~Rational() {}

void Rational::operator=(const Rational &rr) {
    this->numerator = rr.numerator;
    this->denominator = rr.denominator;
}

bool Rational::operator==(const Rational &rr) {
    return this->numerator * rr.denominator == this->denominator * rr.numerator;
}

Rational Rational::operator+(const Rational &rr) {
    int num = this->numerator * rr.denominator + rr.numerator * this->denominator;
    int den = this->denominator * rr.denominator;
    return Rational(num, den);
}

Rational Rational::operator-(const Rational &rr) {
    int num = this->numerator * rr.denominator - rr.numerator * this->denominator;
    int den = this->denominator * rr.denominator;
    return Rational(num, den);
}

Rational Rational::operator*(const Rational &rr) {
    return Rational(this->numerator * rr.numerator, this->denominator * rr.denominator);
}

Rational Rational::operator/(const Rational &rr) {
    if (rr.numerator == 0) return Rational(0, 1);
    return Rational(this->numerator * rr.denominator, this->denominator * rr.numerator);
}

double Rational::getRational() {
    return static_cast<double>(numerator) / denominator;
}

int Rational::getNumerator() {
    return numerator;
}

int Rational::getDenominator() {
    return denominator;
}

void Rational::setNumerator(int numerator) {
    this->numerator = numerator;
    reduce();
}

void Rational::setDenominator(int denominator) {
    if (denominator != 0) {
        this->denominator = denominator;
    }
    reduce();
}

void Rational::reduce() {
    int gcd = std::gcd(numerator, denominator);
    if (gcd != 0) {
        numerator /= gcd;
        denominator /= gcd;
    }
    if (denominator < 0) {
        numerator *= -1;
        denominator *= -1;
    }
}
