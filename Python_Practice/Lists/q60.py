'''
Write a Python program to pack consecutive duplicates of a given list of elements into sublists.
Original list:
[0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4]
After packing consecutive duplicates of the said list elements into sublists:
[[0, 0], [1], [2], [3], [4, 4], [5], [6, 6, 6], [7], [8], [9], [4, 4]]
'''

lst1 = [0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4] 

lst2 = [0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4, 5] 

def storeConsecutive(lst):
    r=[[lst[0]]]
    for index,item in enumerate(lst[1:]):
        if item in r[-1]:
            r[-1].append(item)
        else:
            r.append([item])
    return r

print(storeConsecutive(lst1))
print(storeConsecutive(lst2))
