#  Write a Python program to print the numbers of a specified list after removing even numbers from it

lst = [7,32,81,20,25,14,23,27]

#using filter function
print(list(filter(lambda x:x%2!=0,lst)))

# using list comprehension or a loop
print([i for i in lst if i%2!=0])
