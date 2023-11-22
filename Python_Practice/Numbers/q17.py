'''
print all the prime numbers that are within a given range
'''

num = list(map(int,input('Enter 2 numbers separated by a comma:').split(',')))

def check_prime(n):
    for i in range(2,n):
        if n%i==0:
            return False
            break             
    else:
        return True

for i in range(num[0],num[1]):
    if check_prime(i):
        print(i,end=',')