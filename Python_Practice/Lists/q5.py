# Write a Python program to count the number of strings where the string length is 2 or more and the first and last character are same from a given list of strings

lst = ['abc', 'xyz', 'aba', '1221']

#using loop
def custom(l):
    count = 0
    for i in l:
        if i[0]==i[-1] and len(i)>=2:
            count+=1
    return count

print(custom(lst))

# list comprehension
print(len([i for i in lst if i[0]==i[-1] and len(i)>=2]))