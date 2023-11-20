'''
Write a Python program to remove a specified column from a given nested list.
Original Nested list:
[[1, 2, 3], [2, 4, 5], [1, 1, 1]]
After removing 1st column:
[[2, 3], [4, 5], [1, 1]]
Original Nested list:
[[1, 2, 3], [-2, 4, -5], [1, -1, 1]]
After removing 3rd column:
[[1, 2], [-2, 4], [1, -1]]
'''

def remove_col(lst,cn):
    x = list(range(len(lst[0])))
    x.remove(cn-1)
    r = []
    for idx,item in enumerate(lst):
        col_level = []
        for i in x:
            col_level.append(lst[idx][i])
        r.append(col_level)
    return r

print(remove_col([[1, 2, 3], [2, 4, 5], [1, 1, 1]],1))
print(remove_col([[1, 2, 3], [-2, 4, -5], [1, -1, 1]],3))