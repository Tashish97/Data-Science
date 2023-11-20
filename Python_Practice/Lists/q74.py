'''
Write a Python program to compute average of given lists.
Original list:
[1, 1, 3, 4, 4, 5, 6, 7]
[0, 1, 2, 3, 4, 4, 5, 7, 8]
o/p:
list wise sum: 32.5
element wise sum: 3.823529411764706
'''

def list_avg(lst):
    print('List Wise Sum',sum([sum(i) for i in lst])/len(lst))
    print('Element Wise Sum',sum([sum(i) for i in lst])/sum([len(i) for i in lst]))

list_avg([[1, 1, 3, 4, 4, 5, 6, 7,],[0, 1, 2, 3, 4, 4, 5, 7, 8]])