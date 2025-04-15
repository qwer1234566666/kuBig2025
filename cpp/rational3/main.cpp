#include <iostream>
#include "rational.h"

int main() {
    Rational r1(2, 3);
    Rational r2(4, 5);

    Rational sum = r1 + r2;
    Rational diff = r1 - r2;
    Rational prod = r1 * r2;
    Rational quot = r1 / r2;

    std::cout << "r1 = " << r1.getNumerator() << "/" << r1.getDenominator() << std::endl;
    std::cout << "r2 = " << r2.getNumerator() << "/" << r2.getDenominator() << std::endl;

    std::cout << "\n덧셈 (r1 + r2) = " << sum.getNumerator() << "/" << sum.getDenominator() << " = " << sum.getRational() << std::endl;
    std::cout << "뺄셈 (r1 - r2) = " << diff.getNumerator() << "/" << diff.getDenominator() << " = " << diff.getRational() << std::endl;
    std::cout << "곱셈 (r1 * r2) = " << prod.getNumerator() << "/" << prod.getDenominator() << " = " << prod.getRational() << std::endl;
    std::cout << "나눗셈 (r1 / r2) = " << quot.getNumerator() << "/" << quot.getDenominator() << " = " << quot.getRational() << std::endl;

    return 0;
}
