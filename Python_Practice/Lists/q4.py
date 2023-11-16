# Write a Python program to get the smallest number from a list

lst = [51,7,10,34,2,8]

# using min function
print(min(lst))

#using loop
def lst_min(a):
    min=a[0]
    for item in a:
        min=item if item<min else min
    return min

print(lst_min(lst))