/*
drop table if exists users;
create table users
(
user_id integer,
name varchar(20),
join_date date
);
insert into users
values (1, 'Jon', CAST('2-14-20' AS date)), 
(2, 'Jane', CAST('2-14-20' AS date)), 
(3, 'Jill', CAST('2-15-20' AS date)), 
(4, 'Josh', CAST('2-15-20' AS date)), 
(5, 'Jean', CAST('2-16-20' AS date)), 
(6, 'Justin', CAST('2-17-20' AS date)),
(7, 'Jeremy', CAST('2-18-20' AS date));

drop table if exists events;
create table events
(
user_id integer,
type varchar(10),
access_date date
);

insert into events values
(1, 'Pay', CAST('3-1-20' AS date)), 
(2, 'Music', CAST('3-2-20' AS date)), 
(2, 'P', CAST('3-12-20' AS date)),
(3, 'Music', CAST('3-15-20' AS date)), 
(4, 'Music', CAST('3-15-20' AS date)), 
(1, 'P', CAST('3-16-20' AS date)), 
(3, 'P', CAST('3-22-20' AS date));

Q:Given the following two tables, return the fraction of users, rounded to two decimal places,
who accessed Amazon music and upgraded to prime membership within the first 30 days of signing up. 
*/

select * from users;
select * from events;

with cte as(
select U.*,
case
when type='Music' and DATEDIFF(DAY,join_date,access_date)<=30 then 1
end music_flag,
case
when type='Music' and DATEDIFF(DAY,join_date,access_date)<=30 then 1 else 0
end +
case
when type='P' and DATEDIFF(DAY,join_date,access_date)<=30 then 1 else 0
end prime_and_music_flag
from users U join events E on U.user_id=E.user_id
),cte1 as(
select *, COUNT(music_flag) over() total_music_users from cte
),cte2 as(
select user_id,name,join_date,MAX(total_music_users) total_music_users 
from cte1 group by user_id,name,join_date
having SUM(prime_and_music_flag)=2
)
select COUNT(*)*1.0/MAX(total_music_users) from cte2