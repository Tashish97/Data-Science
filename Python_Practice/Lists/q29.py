# Write a Python program to split a list based on first character of word

lst = ["cat", "dog", "cow", "tiger", "lion", "Fox", "Shark", "Snake", "turtle", "mouse", "monkey", "bear"]
# expected output
'''
F
     Fox
S
     Shark
     Snake
b
     bear
c
     cat
     cow
d
     dog
l
     lion
m
     monkey
     mouse
t
     tiger
     turtle
'''
init = set([i[0] for i in lst])

slist = {}

for i in init:
     temp = []
     for j in lst:
          if j.startswith(i):
               temp.append(j)     
     slist[i]=temp
          
print(slist)