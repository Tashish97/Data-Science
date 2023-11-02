# Write a Python program to get the frequency of the elements in a list

lst = [10, 30, 50, 10, 20, 60, 20, 60, 40, 40, 50, 50, 30]

print({i:lst.count(i) for i in set(lst)})

import collections

print(dict(collections.Counter(lst)))