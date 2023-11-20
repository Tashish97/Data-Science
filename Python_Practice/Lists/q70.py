'''
Write a Python program to sort a given matrix in ascending order according to the sum of its rows.
Original Matrix:
[[1, 2, 3], [2, 4, 5], [1, 1, 1]]
Sort the said matrix in ascending order according to the sum of its rows
[[1, 1, 1], [1, 2, 3], [2, 4, 5]]
Original Matrix:
[[1, 2, 3], [-2, 4, -5], [1, -1, 1]]
Sort the said matrix in ascending order according to the sum of its rows
[[-2, 4, -5], [1, -1, 1], [1, 2, 3]]
'''
lst1 = [[1, 2, 3], [2, 4, 5], [1, 1, 1]]
lst2 = [[1, 2, 3], [-2, 4, -5], [1, -1, 1]]

def sort_high_sum(lst):
    with_sum = []
    for i in lst:
        with_sum.append([i,sum(i)])
    with_sum.sort(key = lambda x:x[1])
    return [i[0] for i in with_sum]

print(sort_high_sum(lst1))
print(sort_high_sum(lst2))