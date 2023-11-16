'''
Write a Python program to get a list, sorted in increasing order by the last element in each tuple from a given list of non-empty tuples.
Sample List : [(2, 5), (1, 2), (4, 4), (2, 3), (2, 1)]
Expected Result : [(2, 1), (1, 2), (2, 3), (4, 4), (2, 5)]
'''
# using sorted function
lst = [(2, 5), (1, 2), (4, 4), (2, 3), (2, 1)]
print(sorted(lst,key=lambda x:x[1]))

# using loop
def custom2ndSort(l):
    l = [str(i[1])+str(i[0]) for i in lst]
    l.sort()
    r = []
    for i in l:
        r.append((int(i[1]),int(i[0])))
    return r

print(custom2ndSort(lst))