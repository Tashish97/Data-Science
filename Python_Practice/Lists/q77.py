'''
Write a Python program to remove words from a given list of strings containing a character or string.
Original list:
list1: ['Red color', 'Orange#', 'Green', 'Orange @', 'White']
Character list:
['#', 'color', '@']
New list:
['Red', '', 'Green', 'Orange', 'White']
'''

lst = ['Red color', 'Orange#', 'Green', 'Orange @', 'White']
rep = ['#', 'color', '@']


def string_replacement(st,rep):
    res = []
    for i in lst:
        element_level = []
        for j in i.split(' '):
            x = j
            for k in rep:
                x = '' if x.find(k)!=-1 else x
            element_level.append(x.strip())
        res.append(' '.join(element_level))
    return res

print(string_replacement(lst,rep))