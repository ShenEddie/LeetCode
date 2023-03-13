class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        unordered_set<char> occ;
        int n = s.size();
        int right = -1;  // 初始值取为-1
        int ans = 0;
        for (int left = 0; left < n; left++) {
            if (left != 0) {
                occ.erase(s[left - 1]); 
            }
            while (right + 1 < n && !occ.count(s[right + 1])) {
                occ.insert(s[right + 1]);
                right++;
            }
            ans = max(ans, right - left + 1);
        }
        return ans;
    }
};
