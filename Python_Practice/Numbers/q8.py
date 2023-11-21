'''
Write a program in Python to find greatest among three integers.
'''

# using max() function
num  = []
for i in range(3):
    num.append(int(input(f'Enter no. {i+1}  ')))
print(max(num))

# using if else
print('Greatest number is: ', end='')
if num[0]>num[1] and num[0]>num[2]:
    print(num[0])
elif num[1]>num[0] and num[1]>num[2]:
    print(num[1])
else:
    print(num[2])