# Write a Python Program to count unique values inside a list

lst = [10, 20, 30, 50, 80, 70, 70, 80, 10]  

print(len(set(lst)))

# using loop
def nunique(l):
    u=[]
    for item in l:
        if item not in u:
            u.append(item)
        else:
            pass
    return len(u)

print(nunique(lst))