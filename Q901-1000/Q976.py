# -*- coding: utf-8 -*-
# @Time    : 2020-11-29 13:37
# @Author  : Eddie Shen
# @Email   : sheneddie@outlook.com
# @File    : Q976.py
# @Software: PyCharm

from typing import List


class Solution:
    def largestPerimeter(self, A: List[int]) -> int:
        A.sort(reverse=True)
        for i in range(len(A) - 2):
            if A[i] < A[i + 1] + A[i + 2]:
                return A[i] + A[i + 1] + A[i + 2]
        return 0


if __name__ == '__main__':
    A = [3, 6, 2, 3]
    solution = Solution()
    print(solution.largestPerimeter(A))
