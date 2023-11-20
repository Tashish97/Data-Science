'''
Write a Python program to decode a run-length message.
Original encoded list:
[[2, 1], 2, 3, [2, 4], 5, 1]
Decode a run-length encoded said list:
[1, 1, 2, 3, 4, 4, 5, 1]
'''

lst = [[2, 1], 2, 3, [2, 4], 5, 1]
r = []
for i in lst:
    if type(i).__name__=='list':
        t=[]
        for j in range(i[0]):
            t.append(i[1])
        r.extend(t)
    else:
        r.append(i)

print(r)