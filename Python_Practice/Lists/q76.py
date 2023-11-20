'''
Write a Python program to extract a specified column from a given nested list.
Original Nested list:
[[1, 2, 3], [2, 4, 5], [1, 1, 1]]
Extract 1st column:
[1, 2, 1]
Original Nested list:
[[1, 2, 3], [-2, 4, -5], [1, -1, 1]]
Extract 3rd column:
[3, -5, 1]
'''

def extract_col(lst,cn):
    r = []
    for idx,item in enumerate(lst):
        r.append(lst[idx][cn-1])
    return r

print(extract_col([[1, 2, 3], [2, 4, 5], [1, 1, 1]],1))
print(extract_col([[1, 2, 3], [-2, 4, -5], [1, -1, 1]],3))