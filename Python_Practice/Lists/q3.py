#  Write a Python program to get the largest number from a list

lst = [1,7,10,34,2,8]

#using max function
print(max(lst))

#using loop
def lst_max(a):
    max=a[0]
    for item in a:
        max=item if item>max else max
    return max

print(lst_max(lst))