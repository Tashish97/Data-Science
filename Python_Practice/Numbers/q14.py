'''
Python Program to calculate factorial using recursive method.
'''

num = int(input('Enter a number: '))

def factorial(n):
    if n==1:
        return 1
    else:
        return n * factorial(n-1)

print(factorial(num))