#include "Zalgorithm.h"
#include "gtest/gtest.h"

using testing::Test;

#include <algorithm>
#include <random>
#include <string>

#define NUM_TEST_CASES 10000
#define RANDOM_STRING_SIZE 100

void gen_random(char *s, const int len) {
    static const char alphanum[] =
        "abcdefghijklmnopqrstuvwxyz";

    for (int i = 0; i < len; ++i) {
        s[i] = alphanum[rand() % (sizeof(alphanum) - 1)];
    }

    s[len] = 0;
}
// Sanity check for ZalgorithmBasedMatching.
// Does NUM_TEST_CASES times:
//    1) Generate random string T of size RANDOM_STRING_SIZE
//    2) Generate a random substring P of T
//    3) Runs ZalgorithmBasedMatching and checks there is at least one match
// Use <random> & uniform_int_distribution for your random number generation
TEST(ZalgorithmSanityCheck, SubstringMatchesInRandomString) {
 std::string T;
 std::string P;
 int i,j,upto,counter,pos;
 bool found;
 static const char alphanum[] =
        "abcdefghijklmnopqrstuvwxyz";
 counter=0;
 for (i=0;i<NUM_TEST_CASES;i++){
     found=false;
     for (j=0;j<RANDOM_STRING_SIZE;j++){
        T+=alphanum[rand() % (sizeof(alphanum) - 1)]; //generate random string
     }
     int pos =0;
     //pos=(rand()%T.size())-1;
     pos = counter%100;
     upto=counter%15;
     if (pos>100){
         throw i;
     }
     P=T.substr(pos,upto);//genrate substring up to 15 chars from T
     std::list<int>* matches= new std::list<int>();
    
     ZalgorithmBasedMatching(P,T,matches);
     
     int *arr = new int[matches->size()];
     copy(matches->begin(),matches->end(),arr);
     int * ii;
     for (ii=arr;ii!= arr + matches->size();ii++){
        if (*ii==pos+2+P.size()){
            found=true;
        }
     }
     std::list<int>::iterator i = matches->begin();
     EXPECT_EQ(found,true)<<P<<" not found in "<<T<<" should be in pos "<<pos<<" "<<*i;
     T="";
     P="";
     delete matches;
     counter ++;
 }
}

int main(int argc, char** argv) {
   testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}