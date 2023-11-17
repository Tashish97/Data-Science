# Write a Python program to insert an element before each element of a list.

lst = ['Red','Green','Black']

def insert_front(item,l):
    r = []
    for i in l:
        r.extend([item,i])
    return r

print(insert_front('c',lst))