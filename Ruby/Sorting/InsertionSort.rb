def insertionSort(arr)
    for i in 1...(arr.length)
        j=i
        while j>0
            if arr[j-1]>arr[j]
                temp=arr[j]
                arr[j]=arr[j-1]
                arr[j-1]=temp
            else
              break
            end
            j=j-1
        end
    end
    return arr
end


array = [1, -4, 6, 11, -6, 2, 78, 32, 48, 0]
sorted = insertionSort(array)
print(sorted)