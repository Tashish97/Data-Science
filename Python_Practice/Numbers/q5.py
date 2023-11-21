'''
Write a program in Python to print the Fibonacci series using recursive method.  
The Fibonacci Sequence is the series of numbers:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

The next number is found by adding up the two numbers before it.
'''
def fibonacci(num):
    if num == 0:
        return 0
    elif num == 1:
        return 1
    else:
        return fibonacci(num-2) + fibonacci(num-1)

for i in range(10):
    print(fibonacci(i))