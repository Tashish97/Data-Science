# Group five consecutive numbers from a list  

import random

lst = [random.randint(1,1000) for i in range(25)]

print([lst[i:i+5] for i in range(0,len(lst),5)])