'''
Write a Python program to extract elements from a given list, between passed element.
Original list:
[1, 1, 3, 4, 4, 5, 6, 7]
i/p:
[1, 4]
o/p: [1, 1, 3, 4, 4]
i/p:
[3,6]
o/p: [3, 4, 4, 5, 6]
'''

lst = [1, 1, 3, 4, 4, 5, 6, 7]

def elements_between(lst,range_):
    ul = lst.index(range_[0])
    ll = lst[::-1].index(range_[1])
    return lst[ul:len(lst)- ll]

print(elements_between(lst,[1,4]))
print(elements_between(lst,[3,6]))