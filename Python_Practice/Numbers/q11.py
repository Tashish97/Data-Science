'''
Write a program in Python to find prime factors of a given integer.

'''
num = int(input('Enter a number greater than 1'))
i = 2
while (num!=1):
    rem = num%i
    if num%i==0:
        num/=i
        print(i)
    else:
        i+=1