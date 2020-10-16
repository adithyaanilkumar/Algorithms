'''
Return the nth (0-indexed) row of Pascal's triangle

Pascal Traingle:
[1]
[1,1]
[1,2,1]
[1,3,3,1]
.....

For example:

Input 1: 0
Output 1: [1]

Input 2: 1
Output 2: [1,1]

Input 3: 3
Output 3: [1,3,3,1]

Input 4: 4
Output 4: [1,4,6,4,1]
'''

class Solution:
    def solve(self, n):
        if n == 0:
            return [1]
        if n == 1:
            return [1, 1]
        ls = [1, 1]
        temp = [1, 1]
        for i in range(2, n + 1):
            ls = temp
            temp = [1]
            for i in range(len(ls) - 1):
                temp.append(ls[i] + ls[i + 1])
            temp.append(1)
        return temp