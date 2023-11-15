/*
create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries 
values ('A','Bangalore','A@gmail.com',1,'CPU'),('A','Bangalore','A1@gmail.com',1,'CPU'),('A','Bangalore','A2@gmail.com',2,'DESKTOP')
,('B','Bangalore','B@gmail.com',2,'DESKTOP'),('B','Bangalore','B1@gmail.com',2,'DESKTOP'),('B','Bangalore','B2@gmail.com',1,'MONITOR')

O/P:
name	total_visits	most_visited_floor	resources
A		3				1					CPU,DESKTOP
B		3				2					DESKTOP,MONITOR

Q: Find user wise entry statistics
*/

select * from entries;

with cte as(
select name,STRING_AGG(resources,',') resources from (select distinct name,resources from entries) tab1 group by name
),cte2 as(
select E.name,floor,COUNT(floor) over(partition by E.name,floor) frequency,C.resources from entries E left join cte C on E.name=C.name
),cte3 as(
select *,MAX(frequency) over(partition by name) max_frequency,COUNT(frequency) over(partition by name) count_ from cte2
)
select distinct name,count_ total_visits,floor most_visited_floor,resources from cte3 where frequency=max_frequency
