# Write a Python Program to List product excluding duplicates

lst = [2, 1, 2, 4, 6, 4, 3, 2, 1]

from functools import reduce

print(reduce(lambda x,y:x*y,list(set(lst))))

# using loop
def lst_prod(a):
    prod=1
    for item in a:
        prod *= item
    return prod
def uniqueProd(l):
    u=[]
    for item in l:
        if item not in u:
            u.append(item)
        else:
            pass
    return lst_prod(u)

print(uniqueProd(lst))