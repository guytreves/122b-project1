#include "library.h"
#include "gtest/gtest.h"

#include <random>

using testing::Test;

#define NUM_TEST_CASES 10000000
#define TEST_BOUND 1000

TEST(LibrarySanityCheck, EvenOrOdd) {
  std::default_random_engine generator;
  std::uniform_int_distribution<int> distribution(-1 * TEST_BOUND, TEST_BOUND);
	for (int i = 0; i < NUM_TEST_CASES; i++) {
		int testNum = distribution(generator);
		EXPECT_EQ(isEven(testNum) || isOdd(testNum), true)
			<< testNum << " is neither even or odd";
		EXPECT_NE(isEven(testNum), isOdd(testNum))
			<< testNum << " is both even and odd";
	}
}

TEST(LibrarySanityCheck, PositiveNegativeOrZero) {
	// Exercise: Test isPositive, isNegative, isZero in a manner similar to above
}

int main(int argc, char** argv) {
   testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}