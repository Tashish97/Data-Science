'''
Write a Python program to sort each sublist of strings in a given list of lists.
Original list:
[[2], [0], [1, 3], [0, 7], [9, 11], [13, 15, 17]]
Sort the list of lists by length and value:
[[0], [2], [0, 7], [1, 3], [9, 11], [13, 15, 17]]
'''

lst = [[2], [0], [1, 3], [0, 7], [9, 11], [13, 15, 17]]
lwl  = [(i,len(i)) for i in lst]
max_length  = max([(i,len(i)) for i in lst],key=lambda x:x[1])[1]
clubbed = []
for i in range(1,max_length+1):
    temp = []
    for j in lwl:
        if j[1]==i:
            temp.append(j)
    clubbed.append(temp)
sorted_list=[]
for i in clubbed:
    sorted_list.append(sorted(i,key=lambda x:x[0]))
op = []
for i in sorted_list:
    for j in i:
        op.append(j[0])

print('Orginal List: ',lst)
print('Sorted List: ',(op))