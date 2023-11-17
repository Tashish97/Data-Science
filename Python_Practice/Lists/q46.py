# Write a Python program to find missing and additional values in two lists.

# using set function

lst_1 = ['a','b','c','d','e','f']
lst_2 = ['d','e','f','g','h']

print('Missing Values',set(lst_1).difference(set(lst_2)))
print('Additional Values',set(lst_2).difference(set(lst_1)))

# custom loops

def just_loop(a,b):
    res = []
    for i in a:
        if i not in b:
            res.append(i)
    return res

def missORadd(a,b):
    return {'Missing': just_loop(a,b),'Additional':just_loop(b,a)}

print(missORadd(lst_1,lst_2))