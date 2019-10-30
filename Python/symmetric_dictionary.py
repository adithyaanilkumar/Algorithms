# generator function to perform task 
def find_sym_pairs(test_dict):
    for key in test_dict.keys():
        val = test_dict.get(key)

        if test_dict.get(val) == key:
            yield key, val
    return


# Initializing dict
test_dict = {'a': 1, 'b': 2, 'c': 3, 1: 'a', 2: 'b'}

# printing original dict  
print("The original dict is : " + str(test_dict))

# Find Symmetric Pairs in dictionary 
# using generator + loop 
res = []
for key, val in find_sym_pairs(test_dict):
    temp = (key, val)
    res.append(temp)

# printing result 
print("The pairs of Symmetric values : " + str(res)) 