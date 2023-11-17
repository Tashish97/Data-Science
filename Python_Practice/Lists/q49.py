'''
Write a Python program to convert a list to a list of dictionaries.
Sample lists: ["Black", "Red", "Maroon", "Yellow"], ["#000000", "#FF0000", "#800000", "#FFFF00"]
Expected Output: [{'color_name': 'Black', 'color_code': '#000000'}, {'color_name': 'Red', 'color_code': '#FF0000'}, {'color_name': 'Maroon', 'color_code': '#800000'}, {'color_name': 'Yellow', 'color_code': '#FFFF00'}]
'''

def club(a,a_name,b,b_name):
    if len(a)==len(b):
        r=[]
        for i,j in enumerate(a):
            r.append({a_name:a[i], b_name:b[i]})
        return r
    else:
        return 'Pass lists with equal lengths'

name = ["Black", "Red", "Maroon", "Yellow"]
code = ["#000000", "#FF0000", "#800000", "#FFFF00"]
print(club(name,'color_name',code,'color_code'))
