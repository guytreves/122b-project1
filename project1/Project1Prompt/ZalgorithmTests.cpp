#include "Zalgorithm.h"
#include "gtest/gtest.h"

#include <string>

using testing::Test;

// Testing MatchLength calculation when no matches occur
TEST(MatchLengthTest, NoMatchTest) {
  EXPECT_EQ(MatchLength(" abcdefg",1,3),0);
}

// Testing MatchLength calculation when geginning of string matches
TEST(MatchLengthTest, BeginningStringMatch) {
  EXPECT_EQ(MatchLength(" abcdefg",1,1),7);
}

// Testing MatchLength calculation when middle of the string matches
TEST(MatchLengthTest, MidStringMatch) {
  EXPECT_EQ(MatchLength(" abcabc",1,4),3);
}

// Testing MatchLength calculation when match stops at end of string
TEST(MatchLengthTest, EndOfStringMatch) {
  EXPECT_EQ(MatchLength(" abcdefa",1,7),1);
}

// Testing Zalgorithm calculation with string S = " aabcaabxaaz", p.7 Gusfield
TEST(ZalgorithmTest, GusfieldExamplePageSeven) {
  std::vector<int> *te = new std::vector<int>();
  Zalgorithm(" aabcaabxaaz", te);
   EXPECT_EQ(te->size(),12);
}

TEST(ZalgorithmBasedMatching,randomexample){
  std::list<int>* matches= new std::list<int>();
  ZalgorithmBasedMatching("aab","baabaa",matches);
  std::list<int>::iterator i = matches->begin();
  EXPECT_EQ(*i,6);
}

int main(int argc, char** argv) {
   testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}