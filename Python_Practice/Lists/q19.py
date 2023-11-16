# Write a Python program to add a list to the second list

lst1 = [10, 20, 30, 40]

lst2 = ["Cat", "Dog", "Lion", "Panda"]

lst3 = lst1+lst2

print(lst3)

# using extend function
lst1.extend(lst2)
print(lst1)