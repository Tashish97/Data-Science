/*
drop table if exists event_status;
create table event_status
(
event_time varchar(10),
status varchar(10)
);
insert into event_status 
values
('10:01','on'),('10:02','on'),('10:03','on'),('10:04','off'),('10:07','on'),('10:08','on'),('10:09','off')
,('10:11','on'),('10:12','off');

Q: ON OFF problem
*/

with cte as(
select *, ROW_NUMBER() over(order by (select null)) rn from event_status
),bounds as( 
select rn as ub, lag(rn,1,0) over(order by rn)+1 lb,ROW_NUMBER() over(order by (select null)) gn from cte where status='off'
),join_data as(
select event_time,gn,count(*) over(partition by b.gn)-1 row_count
from cte a left join bounds b on a.rn between b.lb and b.ub
)
select login,logout,cnt from (select gn,min(event_time) login,MAX(event_time) logout,max(row_count) cnt from join_data group by gn) tab