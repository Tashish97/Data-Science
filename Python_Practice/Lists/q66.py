'''
Write a Python program to remove sublists from a given list of lists that contain an element outside a given range.
Original list:
[[2], [0], [1, 2, 3], [0, 1, 2, 3, 6, 7], [9, 11], [13, 14, 15, 17]]
lower limit: 13
upper limit: 17
After removing sublists from a given list of lists, which contains an element outside the given range:
[[13, 14, 15, 17]]
'''

lst = [[2], [0], [1, 2, 3], [0, 1, 2, 3, 6, 7], [9, 11], [13, 14, 15, 17]]

def sublist_within_limits(lst,u,l):
    return [i for i in lst if len(i) == sum([1 for j in i if j in range(u,l+1)])]


print(sublist_within_limits(lst,13,17))