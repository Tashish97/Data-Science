# Write a Python program to find common items from two lists

lst1 = [23,45,67,78,89,34]

lst2 = [34,89,55,56,39,67]

print(set(lst1).intersection(set(lst2)))

# using loop
def loophaveCommon(x,y):
    r=[]
    for item in x:
        if item in y:
            r.append(item)
    return r

print(loophaveCommon(lst1,lst2))