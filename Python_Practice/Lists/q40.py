# Difference b/w two lists
# get elements from list1 which are not in list2 and vice versa

def notin(a,b):
    r=[]
    for i in a:
        if i not in b:
            r.append(i)
    return r

def listdiff(a,b):
    print(notin(a,b)+notin(b,a))

lst1 = [1, 3, 5, 7, 9]
lst2 = [1, 2, 4, 6, 7, 8]

listdiff(lst1,lst2)