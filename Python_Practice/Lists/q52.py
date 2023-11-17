'''
Write a Python program to compute the difference between two lists.
Sample data: ["red", "orange", "green", "blue", "white"], ["black", "yellow", "green", "blue"]
Expected Output:
Color1-Color2: ['white', 'orange', 'red']
Color2-Color1: ['black', 'yellow']
'''

c1,c2 = ["red", "orange", "green", "blue", "white"], ["black", "yellow", "green", "blue"]

def colDifference(a,b):
    r=[]
    for i in a:
        if i not in b:
            r.append(i)
    return r

print(colDifference(c1,c2))
print(colDifference(c2,c1))