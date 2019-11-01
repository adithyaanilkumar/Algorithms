from collections import Counter


def commonElement(ar1, ar2, ar3):
    # first convert lists into dictionary
    ar1 = Counter(ar1)
    ar2 = Counter(ar2)
    ar3 = Counter(ar3)

    # perform intersection operation
    resultDict = dict(ar1.items() & ar2.items() & ar3.items())
    common = []

    # iterate through resultant dictionary
    # and collect common elements
    for (key, val) in resultDict.items():
        for i in range(0, val):
            common.append(key)

    print(common)


# Driver program
if __name__ == "__main__":
    ar1 = [1, 5, 10, 20, 40, 80]
    ar2 = [6, 7, 20, 80, 100]
    ar3 = [3, 4, 15, 20, 30, 70, 80, 120]
    commonElement(ar1, ar2, ar3)