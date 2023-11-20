'''
Write a Python program to extract common index elements from more than one given list.
Original lists:
[1, 1, 3, 4, 5, 6, 7]
[0, 1, 2, 3, 4, 5, 7]
[0, 1, 2, 3, 4, 5, 7]
Common index elements of the said lists:
[1, 7]
'''

lst = [[1, 1, 3, 4, 5, 6, 7], [0, 1, 2, 3, 4, 5, 7], [0, 1, 2, 3, 4, 5, 7]]
clubbed = []

for i in range(len(lst[0])):
    temp = []
    for j in range(len(lst)):
        temp.append(lst[j][i])
    clubbed.append(temp)

clubbed_set = [item[0] for idx,item in enumerate(clubbed) if len(set(item))==1]
print(clubbed_set)