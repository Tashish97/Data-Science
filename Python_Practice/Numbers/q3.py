'''
Write a program in Python to check given number is prime or not.
A prime number is a whole number greater than 1 whose only factors are 1 and itself. 
A factor is a whole number that can be divided evenly into another number. The first few prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29. 
'''

num = int(input('Enter the nuber: '))
def check_prime(n):
    if n<=1:
        return 'Enter a number greater than 1'
    else:
        for i in range(2,n):
            if n%i==0:
                return 'Not a prime number'
                break
        else:
            return f'{n} is a prime number'

print(check_prime(num))