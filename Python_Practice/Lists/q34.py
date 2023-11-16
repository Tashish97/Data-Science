# Write a Python Program to Test if List contains elements in Range

lst = [4, 5, 6, 7, 3, 9]
lst.sort()
i, j = 3, 10

if list(range(i,j))[:len(lst)]==lst:
    print('True')
else:
    print('False')
