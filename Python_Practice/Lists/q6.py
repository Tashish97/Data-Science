#  Write a Python program to remove duplicates from a list

lst = [1,2,3,7,2,1,5,6,4,8,5,4]

print(list(set(lst)))

# using loop
def rmv_dup(a):
    t=[]
    for item in a:
        if item not in t:
            t.append(item)
        else:
            pass
    return t

print(rmv_dup(lst))