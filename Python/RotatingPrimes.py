'''
Problem : Given an integer n, return whether every rotation of n is prime.
Example :

Input 1 : n = 199
Output 1 : True
Explanation : 199 is prime, 919 is prime, and 991 is prime.

Input 1 : n = 19
Output 1 : False
Explanation : Although 19 is prime, 91 is not.

'''

class Solution:
    def solve(self, n):
        def check(val):
            i = 2
            while i * i <= val:
                if val % i == 0:
                    return False
                i += 1
            return True

        ls = []
        s = str(n)
        for i in range(len(s)):
            ls.append(s[i:] + s[:i])
        ls = [int(i) for i in ls]

        for i in ls:
            if not check(i):
                return False
        return True