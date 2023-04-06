class Solution {
public:
    int romanToInt(string s) {
        unordered_map<char, int> symbolsValues = {
            {'I', 1},
            {'V', 5},
            {'X', 10},
            {'L', 50},
            {'C', 100},
            {'D', 500},
            {'M', 1000}
        };

        int ans = 0;
        int n = s.length();
        int cur;
        for (int i = 0; i < n; i++) {
            cur = symbolsValues[s[i]];
            if (i < n - 1 && cur < symbolsValues[s[i + 1]]) {
                ans -= cur;
            } else {
                ans += cur;
            }
        }
        return ans;
    }
};
