'''
Write a Python program to find items starting with a specific character from a list.
Expected Output:
Original list:
['abcd', 'abc', 'bcd', 'bkie', 'cder', 'cdsw', 'sdfsd', 'dagfa', 'acjd']
Items start with a from the said list:
['abcd', 'abc', 'acjd']
Items start with d from the said list:
['dagfa']
Items start with w from the said list:
[]
'''

word_list = ['abcd', 'abc', 'bcd', 'bkie', 'cder', 'cdsw', 'sdfsd', 'dagfa', 'acjd']

def swc(l,c):
    return [i for i in l if i.startswith(c)]

print(swc(word_list,'a'))
print(swc(word_list,'d'))
print(swc(word_list,'w'))