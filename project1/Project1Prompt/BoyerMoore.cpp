#include "BoyerMoore.h"

#include <algorithm>
#include <iostream>
#include <list>
#include <map>
#include <string>

#include "BoyerMoorePreprocessing.h"

// Input: Pattern P, text T, alphabet Sigma used, and a list to store matches
//      P is 1-indexed, so we represent the pattern "abc" by P = " abc"
//      T is also 1-indexed
// Output: Indices corresponding to occurrances of P in T
void BoyerMoore(const std::string& P, const std::string& T, const std::string& Sigma, std::list<int>* matches) {
	// Pre-processing
	std::vector<int> Lprime, lprime;
	std::map<char, int> R;
	BoyerMoorePreprocessing(P, Sigma, &Lprime, &lprime, &R);
	// Search
	int n = P.size() - 1, m = T.size() - 1;
	int k = n, i, h;
	while (k <= m) {
		for (i = n, h = k; i > 0 && P[i] == T[h]; i--, h--) {}
		if (i == 0) {
			matches->push_back(k - n + 1);
			k = k + n - lprime[2];
		} else {
			// TODO: Shift by max of bad character rule & good suffix rule
			int shift = 1;
			int badCharacterShift = i - R[ T[h] ];
			int goodSuffixShift = Lprime[i + 1] > 0 ? n - Lprime[i + 1] : n - lprime[i + 1];
			if (i < n) {
				shift = std::max(shift, badCharacterShift);
				shift = std::max(shift, goodSuffixShift);
			}
			k += shift;
		}
	}
}
