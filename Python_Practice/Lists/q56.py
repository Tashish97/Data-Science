# Write a Python program to extend a list without appending.

x = [10, 20, 30]
y = [40, 50, 60]

# adding y ate the end
x[-1:] = y
print(x)

# adding y ate the beginning
x[:0] = y
print(x)