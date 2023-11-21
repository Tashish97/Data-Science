# Write a program in Python to swap two numbers without using third variable.

a,b,*c = (int(i) for i in input('Enter numbers separated by a space: ').split())
print(f'a: {a}, b: {b}')
a,b = b,a
print(f'a: {a}, b: {b}')