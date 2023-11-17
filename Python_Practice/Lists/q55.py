# Write a Python program to check if all the values in a list are greater than a specified number.

def rtn(l,num):
    return all([1 if i> num else 0 for i in l])

list1 = [220, 330, 500]
print(rtn(list1,200))
list2 = [12, 17, 21]
print(rtn(list2,25))