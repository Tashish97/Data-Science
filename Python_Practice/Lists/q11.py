# Write a Python program to print a specified list after removing the 0th, 4th and 5th elements. (enumerate)

lst = ["Cat", "Dog", "Elephant", "Fox", "Tiger", "Lion", "Panda"]

for i,j in enumerate(lst):
    if i not in (0,4,5):
        print(j)