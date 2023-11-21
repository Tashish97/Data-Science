''' Write a program in Python to check whether an integer is Armstrong number or not.
It's a number that equals the sum of its digits, each raised to a power. 
For example, if you have a number like 153, it's an Armstrong number because 1^3 + 5^3 + 3^3 equals 153
1634, it's an Armstrong number because 1^4 + 6^4 + 3^4 + 4^4 equals 1634
'''
num = int(input('Enter a number: '))

def armstrong(num, way=1):
    '''
    1: using modulus and division remainder
    2: using string and convert that into int
    '''
    copy = num+0
    rev = 0
    string_num = str(num)
    if way == 1:
        while num!=0:
            rev = rev + (num%10)**len(string_num)
            num//=10
    if way == 2:        
        for i in list(string_num):
            rev = rev + int(i)**len(string_num)
    return True if rev==copy else False

print(armstrong(num))
print(armstrong(num,2))