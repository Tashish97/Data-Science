'''
find hcf of two numbers
'''

numbers = list(map(int,input('enter the numbers separated by a comma: ').split(',')))
max_num = max(numbers)
while max_num!=0:
    if numbers[0]%max_num==0 and numbers[1]%max_num==0:
        print(max_num)
        break
    else:
        max_num-=1
        continue