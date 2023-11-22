'''
Python Program to check a given number is even or odd.
'''

num = int(input('Enter a number: '))

def odd_even(n):
    return 'even' if n%2==0 else 'odd'

print(odd_even(num))