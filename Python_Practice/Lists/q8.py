# Write a Python program to clone or copy a list

lst = [10, 22, 44, 23, 4]
print(id(lst))
lst.append(120)
print(lst)

# shallow copy
lst1 = lst
print(id(lst1))
lst1.append(10)
print(lst1)

# deep copy
lst2 = lst[:]
print(id(lst2))
lst2.append(10)
print(lst2)