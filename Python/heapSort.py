'''
Heap Sort Implementation
Input: [2,5,3,8,6,5,4,7]
Output: [2,3,4,5,5,6,7,8]
'''

def heapify(ls, n, i):
   largest = i
   l = 2 * i + 1 
   r = 2 * i + 2 
   
   if l < n and ls[i] < ls[l]:
      largest = l
   if r < n and ls[largest] < ls[r]:
      largest = r
   if largest != i:
      ls[i],ls[largest] = ls[largest],ls[i] 
      heapify(ls, n, largest)

def heapSort(ls):
   n = len(ls)
   
   for i in range(n, -1, -1):
      heapify(ls, n, i)
   for i in range(n-1, 0, -1):
      ls[i], ls[0] = ls[0], ls[i] 
      heapify(ls, i, 0)

ls = [2,5,3,8,6,5,4,7]
heapSort(ls)
print(ls)