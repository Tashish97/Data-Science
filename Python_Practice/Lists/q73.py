'''
Write a Python program to find the difference between consecutive numbers in a given list.
Original list:
[1, 1, 3, 4, 4, 5, 6, 7]
Difference between consecutive numbers of the said list:
[0, 2, 1, 0, 1, 1, 1]
Original list:
[4, 5, 8, 9, 6, 10]
Difference between consecutive numbers of the said list:
[1, 3, 1, -3, 4]
'''

def consecutive_diff(lst):
    r = []
    for idx, item in enumerate(lst):
        if idx+1<len(lst):
            r.append(lst[idx+1]-lst[idx])
    return r

print(consecutive_diff(lst = [1, 1, 3, 4, 4, 5, 6, 7]))
print(consecutive_diff(lst = [4, 5, 8, 9, 6, 10]))