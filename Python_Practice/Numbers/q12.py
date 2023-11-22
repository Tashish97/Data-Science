'''
Write a proram in Python to find given number is perfect or not?
perfect number, a positive integer that is equal to the sum of its proper divisors.
'''

num = int(input('Enter a number: '))
elements = []
for i in range(1,num):
    if num%i==0:
        elements.append(i)
if sum(elements)==num:
    print('Perfect Number')
else:
    print('Not a Perfect Number')