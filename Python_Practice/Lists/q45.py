'''
Write a Python program to convert a list of multiple integers into a single integer.
Sample list: [11, 33, 50]
Expected Output: 113350
'''

lst = [11, 33, 50]
string=''
for i in lst:
    string+=str(i)
    
print(int(string))