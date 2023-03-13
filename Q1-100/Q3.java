class Solution {
    public int lengthOfLongestSubstring(String s) {
        int n = s.length();
        Set<Character> occ = new HashSet<Character>();
        int right = -1;
        int ans = 0;
        
        for (int left = 0; left < n; left++) {
            if (left != 0) {
                occ.remove(s.charAt(left - 1));
            }
            while (right + 1 < n && !occ.contains(s.charAt(right + 1))) {
                occ.add(s.charAt(right + 1));
                right++;
            }
            ans = Math.max(ans, right - left + 1);
        }

        return ans;
    }
}
