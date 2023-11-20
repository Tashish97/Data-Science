'''
Write a Python program to find the difference between two lists including duplicate elements.
Original lists:
[1, 1, 2, 3, 3, 4, 4, 5, 6, 7]
[1, 1, 2, 4, 5, 6]
Difference between two said list including duplicate elements):
[3, 3, 4, 7]
'''

lst1 = [1, 1, 2, 3, 3, 4, 4, 5, 6, 7]
lst2 = [1, 1, 2, 4, 5, 6]
non_common = lst1[:]

for i in lst2:
    if lst1.index(i)!=1:
        lst1.remove(i)
print(non_common,' - ',lst2)
print('Difference',lst1)
