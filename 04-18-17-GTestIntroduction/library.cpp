#include "library.h"

#include <cstdlib>

bool isEven(int n) {
	return (std::abs(n) % 2) == 0;
}

bool isOdd(int n) {
	return (std::abs(n) % 2) == 1;
}

bool isPositive(int n) {
	return n > 0;
}

bool isNegative(int n) {
	return n < 0;
}

bool isZero(int n)  {
	return n == 0;
}
