# Write a Python program to flatten a shallow list

from functools import reduce

lst = [[20,30,70],[30,90,10], [30,20], [70,90,10,80]]

print(list(reduce(lambda x,y:x+y,lst)))