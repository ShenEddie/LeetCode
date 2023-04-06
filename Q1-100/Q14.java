class Solution {
    public int romanToInt(String s) {
        Map<Character, Integer> symbolsValues = new HashMap<Character, Integer>();
        symbolsValues.put('I', 1);
        symbolsValues.put('V', 5);
        symbolsValues.put('X', 10);
        symbolsValues.put('L', 50);
        symbolsValues.put('C', 100);
        symbolsValues.put('D', 500);
        symbolsValues.put('M', 1000);

        int ans = 0;
        int cur;
        int n = s.length();

        for (int i = 0; i < n; i++) {
            cur = symbolsValues.get(s.charAt(i));
            if (i < n - 1 && cur < symbolsValues.get(s.charAt(i + 1))) {
                ans -= cur;
            } else {
                ans += cur;
            }
        }

        return ans;
    }
}
