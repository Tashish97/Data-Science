/*
create table UserActivity
(
username      varchar(20) ,
activity      varchar(20),
startDate     Date   ,
endDate      Date
);

insert into UserActivity values 
('Alice','Travel','2020-02-12','2020-02-20')
,('Alice','Dancing','2020-02-21','2020-02-23')
,('Alice','Travel','2020-02-24','2020-02-28')
,('Bob','Travel','2020-02-11','2020-02-18');

Q: Get the second most recent activity, 
if there is only one activity return that one 
*/

with cte as(
select *,
COUNT(*)  over(partition by username) row_count,
RANK() over(partition by username order by startDate) rank_
from UserActivity
)
select username,activity,startDate,endDate from cte where (row_count>=2 and rank_=2) or (row_count=1 and rank_=1)