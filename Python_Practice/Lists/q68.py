'''
Write a Python program to find the maximum and minimum values in a given heterogeneous list.
Original list:
['Python', 3, 2, 4, 5, 'version']
Maximum and Minimum values in the said list:
(5, 2)
'''

lst = ['Python', 3, 2, 4, 5, 'version']
nums = [i for i in lst if type(i).__name__=='int']
print(tuple([max(nums),min(nums)]))
