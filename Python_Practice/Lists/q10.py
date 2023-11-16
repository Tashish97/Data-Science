# Write a Program that get two lists as input and check if they have at least one common member

lst1 = [1,2,3,4,5]
lst2 = [5,6,7,8,9]
lst3 = [6,7,8,9]

def haveCommon(x,y):
    if set(x).intersection(set(y)):
        print('At least one common member')
    else:
        print('No common member')
        
haveCommon(lst1,lst2)
haveCommon(lst1,lst3)

# using loop
def loophaveCommon(x,y):
    for item in x:
        if item in y:
            print('At least one common member') 
            break
    else:
        print('No common member')
    
loophaveCommon(lst1,lst2)
loophaveCommon(lst1,lst3)