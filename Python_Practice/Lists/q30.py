# Write a Python program to select the odd numbers of a list

lst = [1,2,4,3,6,7,5,8,9,7,8,9,10]

print(list(filter(lambda x:x%2!=0,lst)))