'''
Write a Python program to remove duplicates from a list of lists.
Sample list : [[10, 20], [40], [30, 56, 25], [10, 20], [33], [40]]
New List : [[10, 20], [30, 56, 25], [33], [40]]
'''

lst = [[10, 20], [40], [30, 56, 25], [10, 20], [33], [40]]
r=[]
for item in lst:
    if item not in r:
        r.append(item)

print(r)