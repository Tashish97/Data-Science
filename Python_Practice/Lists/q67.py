'''
Write a Python program to scramble the letters of a string in a given list.
Original list:
['Python', 'list', 'exercises', 'practice', 'solution']
After scrambling the letters of the strings of the said list:
['tnPhyo', 'tlis', 'ecrsseiex', 'ccpitear', 'noiltuos']
'''

import random

lst = ['Python', 'list', 'exercises', 'practice', 'solution']
res = []
for i in lst:
    x = list(i)
    random.shuffle(x)
    res.append(''.join(x))

print(res)