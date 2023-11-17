'''
Write a Python program to change the position of every n-th value to the (n+1)th in a list.
Sample list: [0,1,2,3,4,5]
Expected Output: [1, 0, 3, 2, 5, 4]
'''
def xchange(a):
    r=[]
    for i in range(0,len(a),2):
        if i+2<=len(a):
            r.extend([a[i+1],a[i]])
    return r


print(xchange([0,1,2,3,4,5]))
print(xchange([0,1,2,3,4,5,6]))
print(xchange([0,1,2,3,4,5,6,7]))
