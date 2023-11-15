/*
create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);

insert into customer_orders values(1,100,cast('2022-01-01' as date),2000),(2,200,cast('2022-01-01' as date),2500),(3,300,cast('2022-01-01' as date),2100)
,(4,100,cast('2022-01-02' as date),2000),(5,400,cast('2022-01-02' as date),2200),(6,500,cast('2022-01-02' as date),2700)
,(7,100,cast('2022-01-03' as date),3000),(8,400,cast('2022-01-03' as date),1000),(9,600,cast('2022-01-03' as date),3000)

Q: Find new and old customer visits for each date
*/
select * from customer_orders;

with cte as(
select a.*,
b.customer_id repeat_visit,
case
when b.customer_id is null then a.customer_id else null
end first_visit
from customer_orders a left join customer_orders b on a.customer_id=b.customer_id and a.order_date>b.order_date
)
select order_date,COUNT(*) total_visits, COUNT(first_visit) first_visits_count, COUNT(distinct repeat_visit) repeat_visits_count 
from cte group by order_date