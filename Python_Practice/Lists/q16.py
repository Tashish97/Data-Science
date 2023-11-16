# Write a Python program to convert a list of characters into a string

lst = ['T','u','t','o','r',' ','J','o','e','s']

print(''.join(lst))

#using loop
string=''
for i in lst:
    string+=i

print(string)

# reduce function
from functools import reduce
print(reduce(lambda x,y:x+y,lst))