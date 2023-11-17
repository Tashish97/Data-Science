'''
Write a Python program to remove consecutive (following each other continuously) duplicates (elements) from a given list.
Original list:
[0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4]
After removing consecutive duplicates:
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 4]
'''

lst1 = [0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4] 

lst2 = [0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4, 5] 

def removeConsecutive(lst):
    r=[lst[0]]
    for index,item in enumerate(lst):
        if lst[index] != r[-1] and index+1<=len(lst):
            r.append(item)
    return r

print(removeConsecutive(lst1))
print(removeConsecutive(lst2))