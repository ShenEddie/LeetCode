class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> table;
        for (int i = 0; i < nums.size(); i++) {
            int num = nums[i];
            int another = target - num;
            if (table.count(another)) {
                return {table[another], i};
            } else {
                table.insert({num, i});
            }
        }
        return {};
    }
}