/*
create table spending 
(
user_id int,
spend_date date,
platform varchar(10),
amount int
);

insert into spending values(1,'2019-07-01','mobile',100),(1,'2019-07-01','desktop',100),(2,'2019-07-01','mobile',100)
,(2,'2019-07-02','mobile',100),(3,'2019-07-01','desktop',100),(3,'2019-07-02','desktop',100);


User purchase platform.
-- The table logs the spendings history of users that make purchases from an online shopping website which has a desktop 
and a mobile application.
-- Write an SQL query to find the total number of users and the total amount spent using mobile only, desktop only 
and both mobile and desktop together for each date.
*/

with cte as(
select *, count(platform) over(partition by user_id,spend_date) platform_count from spending
),cte1 as(
select distinct user_id,spend_date,'both' platform, sum(amount) amount from cte where platform_count=2
group by user_id,spend_date
),cte2 as(
select S.*,
case
when C.platform is null then S.platform else C.platform
end nplatform
from spending S left join cte1 C on S.spend_date=C.spend_date and S.user_id=C.user_id
)
select spend_date,nplatform,sum(amount) total_amount,count(distinct user_id) total_users from cte2
group by spend_date,nplatform order by spend_date;