# Write a Python program to split a list based on the first character of a word.  

word_list = ['be','have','do','say','get','make','go','know','take','see','come','think',
     'look','want','give','use','find','tell','ask','work','seem','feel','leave','call']

unique = set([i[0] for i in word_list])

for i in unique:
    print('*'*5,i,'*'*5)
    for j in word_list:
        if j.startswith(i):
            print(j)

