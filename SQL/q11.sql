/*
create table company_revenue 
(
company varchar(100),
year int,
revenue int
)

insert into company_revenue values 
('ABC1',2000,100),('ABC1',2001,110),('ABC1',2002,120),('ABC2',2000,100),('ABC2',2001,90),('ABC2',2002,120)
,('ABC3',2000,500),('ABC3',2001,400),('ABC3',2002,600),('ABC3',2003,800);
get company name which has consistent increasing revenue
O/P: ABC1
*/


with cte as(
select *,
revenue-LAG(revenue,1,0) over(partition by company order by year) lag1,
count(1) over(partition by company) row_count
from company_revenue
)
select company from cte group by company having SUM(case when lag1>0 then 1 else 0 end)=max(row_count)