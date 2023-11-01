# Write a Python program to multiply all the items in a list

from functools import reduce

lst = [3,4,5,4,7]

print(reduce(lambda x,y:x*y,lst))
