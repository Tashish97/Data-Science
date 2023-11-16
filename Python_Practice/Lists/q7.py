# Write a Python program to check a list is empty or not

lst = [34,45,6,5,4,56,7]

def lie(l):
    if l:
        print('List is not empty')
    else:
        print('List is empty')

lie(lst)
lie([])

# using len function
def len_lie(l):
    print('List is empty' if len(l)==0 else 'List is not empty')
    
len_lie(lst)
len_lie([])