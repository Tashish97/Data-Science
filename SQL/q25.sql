/*

create table persons(
PersonID integer,
Name varchar(20),
Email varchar(30),
Score integer
);

insert into persons values
(1,'Alice','alice2018@hotmail.com',88),
(2,'Bob','bob2018@hotmail.com',11),
(3,'Davis','davis2018@hotmail.com',27),
(4,'Tara','tara2018@hotmail.com',45),
(5,'John','john2018@hotmail.com',63);

create table friends(
PersonID integer,
FriendID integer
);

insert into friends values
(1,2),
(1,3),
(2,1),
(2,3),
(3,5),
(4,2),
(4,3),
(4,5);

Q:find PersonID,Name,SUM of scores of people whose friends scores sum in >100
*/

select * from persons;

select * from friends;

select P.PersonID,P.Name,SUM(P1.Score) friends_score,COUNT(FriendID) friends_count
from persons P left join friends F ON P.PersonID = F.PersonID 
left join persons P1 on F.FriendID=P1.PersonID
group by P.PersonID,P.Name HAVING SUM(P1.Score)>100