# Create a list by concatenating a given list which range goes from 1 to n

S = ['T', 'J']

N = 10

# Expected Output
# ['T1', 'J1', 'T2', 'J2', 'T3', 'J3', 'T4', 'J4', 'T5', 'J5', 'T6', 'J6', 'T7', 'J7', 'T8', 'J8', 'T9', 'J9', 'T10', 'J10']

print([j+str(i) for i in range(1,N+1) for j in S])