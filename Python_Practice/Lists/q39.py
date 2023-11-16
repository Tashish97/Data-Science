'''
Write a Python program to check if each number is prime in a given list of numbers. Return True if all numbers are prime otherwise False.
Prime number:
a whole number greater than 1 that cannot be exactly divided by any whole number other than itself and 1 (e.g. 2, 3, 5, 7, 11).

Sample Data:
([0, 3, 4, 7, 9]) -> False
([3, 5, 7, 13]) -> True
([1, 5, 3]) -> False
'''

def prime(n):
    if n<2:
        return 0
    else:
        for i in range(2,n):
            if n%i==0:
                return 0
                break
        else:
            return 1

def result(l):
    print('True' if  all([prime(i) for i in l]) else 'False')
    

result([0, 3, 4, 7, 9])
result([3, 5, 7, 13])
result([1, 5, 3])