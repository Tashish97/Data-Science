# Write a Python Program to Extract elements with Frequency greater than K

lst = [4, 6, 4, 3, 3, 4, 3, 7, 8, 8]

k = 2

print([i for i in set(lst) if lst.count(i)>k])