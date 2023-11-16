# Write a python program to check whether two lists are circularly identical

lst1 = [8, 8, 12, 12, 8]

lst2 = [8, 8, 8, 12, 12]

lst3 = [1, 8, 8, 12, 12]

# need to sort the list
lst1.sort()
lst2.sort()
lst3.sort()

def cIdentical(x,y):
    if x==y:
        print('True')
    else:
        print('False')
        
cIdentical(lst1,lst2)
cIdentical(lst1,lst3)

def custom_sort(a):
    '''
    Function to do list sorting
    '''
    i=1
    while i<len(a):
        if a[i]<a[i-1]:
            a[i-1]=a[i]
        i+=1
    return a

def cid(a,b):
    print('True' if custom_sort(a)==custom_sort(b) else 'False')

cid(lst1,lst2)
cid(lst1,lst3)
