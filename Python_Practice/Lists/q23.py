# Write a Python program to find the second largest number in a list

lst = [2,4,56,78,4,34,5,8,9,1]

lst.sort()

print(lst[-2])


def custom_sort(a):
    '''
    Function to do list sorting
    '''
    i=1
    while i<len(a):
        if a[i]<a[i-1]:
            a[i-1]=a[i]
        i+=1
    # just coz of question constraint
    return a[-2] 

print(custom_sort(lst))