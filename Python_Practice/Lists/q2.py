# Write a Python program to multiply all the items in a list

from functools import reduce

lst = [3,4,5,4,7]

 #using reduce function
print(reduce(lambda x,y:x*y,lst))

# using loop
def lst_prod(a):
    prod=1
    for item in a:
        prod *= item
    return prod

print(lst_prod(lst))