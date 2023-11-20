'''
Write a Python program to extract elements from a given list, which follows each other continuously n times.
Original list:
[1, 1, 3, 4, 4, 5, 6, 7]
n=2
o/p: [1, 4]
n=4
[0, 1, 2, 3, 4, 4, 4, 4, 5, 7]
o/p: [4]
'''

def club_following(ip_list,n):
    club = [[ip_list[0]]]
    for i in ip_list[1:]:
        if i in club[-1]:
            club[-1].append(i)
        else:
            club.append([i])
    club_count = [i for i in club if len(i)==n]
    return [i[0] for i in club_count]

lst = [1, 1, 3, 4, 4, 5, 6, 7]
n = 2
print(club_following(lst,n))

lst = [0, 1, 2, 3, 4, 4, 4, 4, 5, 7]
n = 4
print(club_following(lst,n))