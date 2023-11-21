'''
Write a program in Python to check whether a number is palindrome or not using recursive method.
A palindromic number (also known as a numeral palindrome or a numeric palindrome) is a number (such as 16461) that remains the same when its digits are reversed.
'''

num = int(input('Enter a number: '))

def palindrome(num):
    if num<10:
        return num 
    return int(str(num%10) + str(palindrome(num//10)))

print(palindrome(num))