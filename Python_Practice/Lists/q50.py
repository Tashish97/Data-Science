'''Write a Python program to sort a list of nested dictionaries.
Original List:                                                                                                
[{'key': {'subkey': 1}}, {'key': {'subkey': 10}}, {'key': {'subkey': 5}}]                                     
Sorted List:                                                                                                  
[{'key': {'subkey': 10}}, {'key': {'subkey': 5}}, {'key': {'subkey': 1}}]  
'''

lst = [{'key': {'subkey': 1}}, {'key': {'subkey': 10}}, {'key': {'subkey': 5}}] 
lst1 = lst[:]

#using list sort method
lst.sort(key= lambda x: x['key']['subkey'])
print(lst)