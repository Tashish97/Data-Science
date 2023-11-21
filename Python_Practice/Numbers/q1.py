# Write a program to reverse an integer in Python.

num = int(input('Enetr a number: '))
rev = 0
while num!=0:
    rev = rev*10+(num%10)
    num//=10

print(rev)