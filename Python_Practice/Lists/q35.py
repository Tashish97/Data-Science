# Write a Python program to check if the list contains three consecutive common numbers in Python

lst = [18, 18, 18, 6, 3, 4, 9, 9, 9]

llen = len(lst)

for index,item in enumerate(lst):
    if index+3<=llen:
        if lst[index:index+3].count(item)==3:
            print(item)