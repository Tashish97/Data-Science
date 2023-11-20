'''
Write a Python program to count the number of unique sublists within a given list.
Original list:
[[1, 3], [5, 7], [1, 3], [13, 15, 17], [5, 7], [9, 11]]
Number of unique lists of the said list:
{(1, 3): 2, (5, 7): 2, (13, 15, 17): 1, (9, 11): 1}
Original list:
[['green', 'orange'], ['black'], ['green', 'orange'], ['white']]
Number of unique lists of the said list:
{('green', 'orange'): 2, ('black',): 1, ('white',): 1}
'''

lst1 = [[1, 3], [5, 7], [1, 3], [13, 15, 17], [5, 7], [9, 11]]
lst2 = [['green', 'orange'], ['black'], ['green', 'orange'], ['white']]

def unique_sublists(lst):
    r = []
    flag = 0
    if type(lst[0][0]).__name__=='int':
        flag = 1
    for i in lst:
        r.append('_'.join([str(j) for j in i]))
    unique = set(r)
    res = {tuple([ int(k) if flag==1 else k for k in j.split('_')]):r.count(j) for j in unique}
    print( res)

unique_sublists(lst1)
unique_sublists(lst2)