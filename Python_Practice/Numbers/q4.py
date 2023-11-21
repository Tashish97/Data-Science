''' 
Write a program in Python to print the Fibonacci series using iterative method.  
The Fibonacci Sequence is the series of numbers:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

The next number is found by adding up the two numbers before it.
'''

nth = int(input('Enter a number: '))

a = 0
b = 1
for i in range(nth):
    print(a)
    a, b = b, a+b
