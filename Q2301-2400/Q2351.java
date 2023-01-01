class Solution {
    public char repeatedCharacter(String s) {
       HashSet<Character> seen = new HashSet<Character>();
       for (int i = 0; i < s.length(); i++) {
           char ch = s.charAt(i);
           if (!seen.add(ch)) {  // add返回boolean, 如果集合中已有该元素则返回false
               return ch;
           }
       }
       return ' ';
    }
}