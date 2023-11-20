'''
Write a Python program to create a list reflecting the modified run-length encoding from a given list of integers or a given list of characters.
Original list:
[1, 1, 2, 3, 4, 4, 5, 1]
List reflecting the modified run-length encoding from the said list:
[[2, 1], 2, 3, [2, 4], 5, 1]
Original String:
aabcddddadnss
List reflecting the modified run-length encoding from the said string:
[[2, 'a'], 'b', 'c', [4, 'd'], 'a', 'd', 'n', [2, 's']]
'''

lst = [1, 1, 2, 3, 4, 4, 5, 1]

def storeConsecutive_reflect_modified(ip):
    lst = list(ip) if type(ip)=='str' else ip        
    r=[[lst[0]]]
    for index,item in enumerate(lst[1:]):
        if item in r[-1]:
            r[-1].append(item)
        else:
            r.append([item])
    return [[len(i),i[0]] if len(i)>1 else i[0] for i in r]

print(storeConsecutive_reflect_modified(lst))
print(storeConsecutive_reflect_modified('aabcddddadnss'))