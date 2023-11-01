# Write a Python program to find the list of words that are longer than n from a given list of words

string = "Find the List of Words that are Longer than n from a given List of Words"
n = 4

def ltn(s,n):
    print([i for i in s.split() if len(i)>n])
    
ltn(string,n)