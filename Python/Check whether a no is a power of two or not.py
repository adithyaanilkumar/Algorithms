'''Write a program to find whether a given number is a power of 2 or not.

Output Format:
Print 'YES' or 'NO' accordingly

Example:

Input:
64

Output:
YES

Input:
48

Output:
NO

Explanation:
In the first example, 64 is a power of 2 so the answer is YES.
The second number is not a power of 2 hence the answer is NO.'''

#The Code

import math #math module for mathematical functions
n=int(input("Enter the number"))
def log2(n): #find log2 of the given number 
  l=math.log10(n)/math.log10(2)
  return(l)
def isPower(n): #checking if a number is power of two
    return (math.ceil(log2(n)) == math.floor(log2(n))) #comparisson of floor and ceil values
if(isPower(n)): #printing output
    print("YES", end="")
else: 
    print("NO", end="")