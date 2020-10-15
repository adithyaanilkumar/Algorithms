'''
Here is the implementation to print the Nth Fibonacci Number.

Input 1: 6
Output 1: 8
because [1,1,2,3,5,8] has 8 in it's 6th position

Input 1: 7
Output 1: 13
because [1,1,2,3,5,8,13] has 13 in it's 7th position

'''


class Solution:
    def solve(self, n):
        a,b=1,0
        for i in range(n):
            a,b=b,a+b
        return b