'''
Find lcm of two numbers
'''

numbers = list(map(int,input('enter the numbers separated by a comma: ').split(',')))
i = 1
while True:
    if i%numbers[0]==0 and i%numbers[1]==0:
        print(i)
        break
    else:
        i+=1
        continue