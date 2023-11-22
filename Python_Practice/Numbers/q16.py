'''
print all the prime numbers that are smaller than or equal to the number given
'''

num = int(input('Enter a number: '))

def check_prime(n):
    for i in range(2,n):
        if n%i==0:
            return False
            break             
    else:
        return True

for i in range(2,num):
    if check_prime(i):
        print(i,end=',')