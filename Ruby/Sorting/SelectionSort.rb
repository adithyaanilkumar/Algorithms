def selectionSort(arr)
    n = arr.length
   for i in 0...n 
    min = i
    for j in (i+1)...n
        if arr[j]<arr[min]
            temp=arr[j]
            arr[j]=arr[min]
            arr[min]=temp
        end
    end
   end
   return arr
end


array = [1, -4, 6, 11, -6, 2, 78, 32, 48, 21]
sorted = selectionSort(array)
print(sorted)