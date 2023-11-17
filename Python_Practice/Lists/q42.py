# Write a Python program to generate all sublists of a list.

from itertools import combinations

def sublist(a):
    r = []
    for i in range(len(a)+1):
        r.extend(list(combinations(a,i)))
    return r

print(sublist([3,6,1]))