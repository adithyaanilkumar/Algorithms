# Python program to implement interpolation search with recursion
   
def interpolation_search(arr, low, high, x): 
    
    if (low <= high and x >= arr[low] and x <= arr[high]): 
        
        pos = low + ((high - low) // (arr[high] - arr[low]) * (x - arr[low]))
        if arr[pos] == x: 
            return pos 
        if arr[pos] < x: 
            return interpolation_search(arr, pos + 1, high, x)
        if arr[pos] > x: 
            return interpolation_search(arr, low, pos - 1, x)
    return -1

arr = list(map(int,input("\nEnter the numbers : ").strip().split()))
n = len(arr)  
 
x = int(input("\nEnter the number to be searched : "))
index = interpolation_search(arr, 0, n - 1, x)  
  
if index != -1:  
    print("Element found at index", index) 
else:  
    print("Element not found") 
