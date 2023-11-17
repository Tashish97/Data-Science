'''
Write a Python program to find the list in a list of lists whose sum of elements is the highest.
Sample lists: [[1,2,3], [4,5,6], [10,11,12], [7,8,9]]
Expected Output: [10, 11, 12]
'''

lst = [[1,2,3], [4,5,6], [10,11,12], [7,8,9]]

def maxSumEle(l):
    s = [[i,sum(i)] for i in l]
    s.sort(key=lambda x:x[1])
    return s[-1][0]

print(maxSumEle(lst))