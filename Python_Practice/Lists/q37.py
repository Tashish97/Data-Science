# Write a Python Program to print all Possible Combinations from the three Digits

lst = [1, 2, 3]

import itertools

for i in itertools.permutations(lst):
    print(i)
    
# using loop
for i in range(3):
    for j in range(3):
        for k in range(3):
            if (i!=j and j!=k and i!=k):
                print(lst[i], lst[j], lst[k])	