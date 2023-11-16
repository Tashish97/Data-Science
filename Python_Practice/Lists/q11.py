# Write a Python program to print a specified list after removing the 0th, 4th and 5th elements. (enumerate)

lst = ["Cat", "Dog", "Elephant", "Fox", "Tiger", "Lion", "Panda"]

for i,j in enumerate(lst):
    if i not in (0,4,5):
        print(j)
        
        
# without enumerate
def pop_certain(l,idx):
    i=0
    rl=[]
    for item in l:
        if i in idx:
            pass
        else:
            rl.append(item)
        i+=1
    return rl

print(pop_certain(lst,[0,4,5]))