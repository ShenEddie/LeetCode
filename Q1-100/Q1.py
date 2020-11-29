# -*- coding: utf-8 -*-
# @Time    : 2020-11-29 14:08
# @Author  : Eddie Shen
# @Email   : sheneddie@outlook.com
# @File    : Q1.py
# @Software: PyCharm

from typing import List


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        n = len(nums)
        for i in range(n):
            for j in range(i + 1, n):
                if nums[i] + nums[j] == target:
                    return [i, j]


if __name__ == '__main__':
    nums = [2, 7, 11, 15]
    target = 9
    solution = Solution()
    print(solution.twoSum(nums, target))
