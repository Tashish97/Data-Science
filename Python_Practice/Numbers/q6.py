'''
Write a program in Python to check whether a number is palindrome or not using iterative method.
A palindromic number (also known as a numeral palindrome or a numeric palindrome) is a number (such as 16461) that remains the same when its digits are reversed.
'''

num = int(input('Enetr a number: '))
rev = 0
copy = num+0
while num!=0:
    rev = rev*10+(num%10)
    num//=10

print('Palindrome:',True if copy == rev else False)
