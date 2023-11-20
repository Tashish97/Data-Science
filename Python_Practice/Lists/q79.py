'''
Write a Python program to count the frequency of consecutive duplicate elements in a given list of numbers.
Original lists:
[1, 2, 2, 2, 4, 4, 4, 5, 5, 5, 5]
Consecutive duplicate elements and their frequency:
([1, 2, 4, 5], [1, 3, 3, 4])
'''

lst = [1, 2, 2, 2, 4, 4, 4, 5, 5, 5, 5]

def consecutiveCount(lst):
    r=[[lst[0]]]
    for index,item in enumerate(lst[1:]):
        if item in r[-1]:
            r[-1].append(item)
        else:
            r.append([item])
    return r
def result():
    count_ = [(i[0],len(i)) for i in consecutiveCount(lst)]
    r = [[],[]]
    for i in range(2):
        for j in range(len(count_)):
            r[i].append(count_[j][i])
    return r
print(result())