#include "library.h"			// File to test
#include "gtest/gtest.h"	// gtest framework

#include <string>

using testing::Test;

// Tests to run
TEST(isEvenTest, ZeroIsEven) {
	EXPECT_EQ(isEven(0), true);
}

TEST(isEvenTest, OneIsNotEven) {
	EXPECT_EQ(isEven(1), false);
}

TEST(isEvenTest, NegativeOneIsNotEven) {
	EXPECT_EQ(isEven(-1), false);
}

TEST(isEvenTest, TwoIsEven) {
	EXPECT_EQ(isEven(2), true);
}

TEST(isEvenTest, NegativeTwoIsEven) {
	EXPECT_EQ(isEven(-2), true);
}

TEST(isOddTest, ZeroIsEven) {
	EXPECT_EQ(isOdd(0), false);
}

TEST(isOddTest, OneIsNotEven) {
	EXPECT_EQ(isOdd(1), true);
}

TEST(isOddTest, NegativeOneIsNotEven) {
	EXPECT_EQ(isOdd(-1), true);
}

TEST(isOddTest, TwoIsEven) {
	EXPECT_EQ(isOdd(2), false);
}

TEST(isOddTest, NegativeTwoIsEven) {
	EXPECT_EQ(isOdd(-2), false);
}

TEST(isPositiveTest, ZeroIsNotPositive) {
	EXPECT_EQ(isPositive(0), false);
}

TEST(isPositiveTest, OneIsPositive) {
	EXPECT_EQ(isPositive(1), true);
}

TEST(isPositiveTest, NegativeOneIsNotPositive) {
	EXPECT_EQ(isPositive(-1), false);
}

// Exercise: Copy isPositiveTests and use to test isNegativeTest / isZeroTest

int main(int argc, char** argv) {
   testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}