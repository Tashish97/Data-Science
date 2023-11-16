# Write a Python program to get unique values from a list

lst = [82, 4, 10, 56, 78, 4, 34, 5, 10, 9]

print(list(set(lst)))

# using loop
def unique(l):
    u=[]
    for item in l:
        if item not in u:
            u.append(item)
        else:
            pass
    return u

print(unique(lst))