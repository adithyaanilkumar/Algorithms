
# Selection Sort
# Time Complexity: O(n^2)

# A Implementation of a Selection Sort Algorithm Through a Function.
def selection_sort(nums):

    # This value of i corresponds to each value that will be sorted.
    for i in range(len(nums)):
        # We assume that the first item of the unsorted numbers is the smallest
        lowest_value_index = i
        # This loop iterates over the unsorted items
        for j in range(i + 1, len(nums)):
            if nums[j] < nums[lowest_value_index]:
                lowest_value_index = j
        # Swap values of the lowest unsorted element with the first unsorted element
        nums[i], nums[lowest_value_index] = nums[lowest_value_index], nums[i]

# Example 1: [12, 8, 3, 20, 11]
# We Prepare a List of Values to Test Our Algorithm.
random_list_of_nums = [12, 8, 3, 20, 11]
selection_sort(random_list_of_nums)

print(random_list_of_nums)
# Expected Result: [3,8,11,12,20]

# Example 2: [9,12,1,4,5,7,8]
random_list_of_nums = [9, 12, 1, 4, 5, 7, 8]
selection_sort(random_list_of_nums)

print(random_list_of_nums)
# Expected Result: [1, 4, 5, 7, 8, 9, 12]

