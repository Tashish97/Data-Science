# Write a Python program to find the index of an item in a specified list

lst = [20, 70, 30, 90, 10, 30, 90, 10, 80]
item = 30

print(lst.index(item))

#using loop
def IndexAtitem(l,item):
    i=0
    for j in l:
        if j==item:
            print(i)
            '''
            if this isn't added loop will go till the end of the list
            remove break if multiple indices are to be found
            '''
            break 
        i+=1
        
IndexAtitem(lst,30)