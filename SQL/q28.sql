/*
create table tasks (
date_value date,
state varchar(10)
);

insert into tasks  values ('2019-01-01','success'),('2019-01-02','success'),('2019-01-03','success'),('2019-01-04','fail')
,('2019-01-05','fail'),('2019-01-06','success')

O/P:
start_date	end_date	state
2019-01-01	2019-01-03	success
2019-01-04	2019-01-05	fail
2019-01-06	2019-01-06	success
*/

with cte as(
select *, ROW_NUMBER() over(order by (select null)) rn from tasks
),success_cte as(
select *,rn - ROW_NUMBER() over(order by (select null)) success_grp
from cte where state='success'
),fail_cte as(
select *,rn - ROW_NUMBER() over(order by (select null)) fail_grp
from cte where state='fail'
),join_cte as(
select T.state,S.date_value sdate,F.date_value fdate,
MIN(T.date_value) over(partition by success_grp) success_grp_min_date,
MAX(T.date_value) over(partition by success_grp) success_grp_max_date,
MIN(T.date_value) over(partition by fail_grp) fail_grp_min_date,
MAX(T.date_value) over(partition by fail_grp) fail_grp_max_date
from tasks T left join success_cte S on T.date_value=S.date_value and T.state=S.state 
left join fail_cte F ON  T.date_value=F.date_value and T.state=F.state 
), final_cte as(
select state,
case
when sdate is not null then success_grp_min_date
when fdate is not null then fail_grp_min_date
end start_date,
case
when sdate is not null then success_grp_max_date
when fdate is not null then fail_grp_max_date
end end_date
from join_cte
)
select start_date,end_date,state from final_cte group by state,start_date,end_date
order by start_date