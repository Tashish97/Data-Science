# Write a Python program to find the Strongest Neighbour

lst = [20,10,20,30,20,30,400]

res = []

for i in range(1,len(lst)):
    res.append(max(lst[i],lst[i-1]))

print(res)