class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> table = new HashMap<Integer, Integer>();
        for (int i = 0; i < nums.length; i++) {
            int num = nums[i];
            int another = target - num;
            if (table.containsKey(another)) {
                return new int[] { table.get(another), i };
            } else {
                table.put(num, i);
            }
        }
        return new int[0];
    }
}