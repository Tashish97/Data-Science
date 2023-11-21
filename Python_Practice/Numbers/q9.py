# Write a program in Python to find sum of digits of a number using recursion

num = int(input('Enetr a number: '))

def sum_recursion(num):
    if num<10:
        return num
    else:
        return num%10 + sum_recursion(num//10)

print(sum_recursion(num))