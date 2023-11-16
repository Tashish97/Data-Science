# Write a python programs to sum all the elements in a given list

lst = [1,7,-10,34,2,-8]

# using sum function
print(sum(lst))

# using loop
def lst_sum(a):
    sum=0
    for item in a:
        sum += item
    return sum

print(lst_sum(lst))