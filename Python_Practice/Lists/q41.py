''' Write a Python program to check whether a list contains a sublist.

[4,3] subset [2,4,3,5,7] -> True
[3,7] subset [2,4,3,5,7] -> False
'''

def subset(o,s):
    '''
    o: The list we are into into
    s: subset to check for
    '''
    for i,j in enumerate(o):
        if o[i:i+len(s)]==s and i+len(s)<=len(o):
            return True
    else:
        return False

print(subset([2,4,3,5,7],[4,3]))
print(subset([2,4,3,5,7],[3,7]))