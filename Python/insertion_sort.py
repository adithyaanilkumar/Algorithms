def insertion_sort(collection):
    for insert_index, insert_value in enumerate(collection[1:]):
        temp_index = insert_index
        while insert_index >= 0 and insert_value < collection[insert_index]:
            collection[insert_index + 1] = collection[insert_index]
            insert_index -= 1
        if insert_index != temp_index:
            collection[insert_index + 1] = insert_value
    return collection


arr = input('Enter the elements of the array ').split(',')
arr = [int(i) for i in arr]

n = len(arr)
print("Given array is")
for i in range(n):
    print("%d" % arr[i]),

insertion_sort(arr)
print("\n\nSorted array is")
for i in range(n):
    print("%d" % arr[i])