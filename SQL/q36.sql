/*
drop table if exists activity;
CREATE table activity
(
user_id varchar(20),
event_name varchar(20),
event_date date,
country varchar(20)
);
delete from activity;
insert into activity values (1,'app-installed','2022-01-01','India')
,(1,'app-purchase','2022-01-02','India')
,(2,'app-installed','2022-01-01','USA')
,(3,'app-installed','2022-01-01','USA')
,(3,'app-purchase','2022-01-03','USA')
,(4,'app-installed','2022-01-03','India')
,(4,'app-purchase','2022-01-03','India')
,(5,'app-installed','2022-01-03','SL')
,(5,'app-purchase','2022-01-03','SL')
,(6,'app-installed','2022-01-04','Pakistan')
,(6,'app-purchase','2022-01-04','Pakistan');

Q: Spotify Data Analyst Case Study
*/

select * from activity;

-- q1: Find total active users each day
select event_date, count (distinct user_id ) no_of_users from activity group by event_date;

-- q2: Find number of users each week
select DATEPART(week,event_date) week_no , COUNT(distinct user_id) no_of_users
from activity group by DATEPART(week,event_date) ;

-- q3: number of users who purchased and installed app on the same day
with cte as(
select * ,
COUNT(event_name) over(partition by event_date,user_id)/2 users_num
from activity
),cte1 as(
select user_id,event_date, MAX(users_num) users_num from cte group by user_id,event_date
)
select event_date,SUM(users_num) users_num_same_day from cte1 group by event_date;

-- q4: percentage of paid users in India, USA , other( except first two)
with cte as(
select *,
case
when country not in ('India','USA') then 'Others' else country
end new_country
from activity
)
select new_country,ROUND(COUNT(*)*100.0/ (select count(*) from cte),2) percentage_users from cte group by new_country;

-- q5: Among all the users who installed the app on a given day.
-- How many purchase the app very next day
with cte as(
select *,
case 
when DATEDIFF(day,lag(event_date) over(partition by user_id order by event_date),event_date) = 1 and 
event_name='app-purchase' and lag(event_name) over(partition by user_id order by event_date) = 'app-installed'
then 1
else 0
end ndPurchase
from activity
)
select event_date,SUM(ndPurchase) cnt_users from cte group by event_date;