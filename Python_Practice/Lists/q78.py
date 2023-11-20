'''
Write a Python program to count the same pair in three given lists.
Original lists:
[1, 2, 3, 4, 5, 6, 7, 8]
[2, 2, 3, 1, 2, 6, 7, 9]
[2, 1, 3, 1, 2, 6, 7, 9]
Number of same pair of the said three given lists:
3
'''
lst = [[1, 2, 3, 4, 5, 6, 7, 8],[2, 2, 3, 1, 2, 6, 7, 9],[2, 1, 3, 1, 2, 6, 7, 9]]
clubbed = []

for i in range(len(lst[0])):
    temp = []
    for j in range(len(lst)):
        temp.append(lst[j][i])
    clubbed.append(temp)

clubbed_set = [item[0] for idx,item in enumerate(clubbed) if len(set(item))==1]
print(len(clubbed_set))