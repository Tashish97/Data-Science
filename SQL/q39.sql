/*
drop table if exists products;
create table products
(
product_id varchar(20) ,
cost int
);
insert into products values ('P1',200),('P2',300),('P3',500),('P4',800);

drop table if exists customer_budget;
create table customer_budget
(
customer_id int,
budget int
);

insert into customer_budget values (100,400),(200,800),(300,1500);
Q: Find how many products fall into customer budget along with list of products
*/

with cte as(
select * from customer_budget c
join 
(select *,SUM(cost) over(order by product_id) running_cost from products) p on p.running_cost<=c.budget
)
select customer_id,budget,COUNT(*) num_of_products,
STRING_AGG(product_id,',') within group(order by product_id) list_of_products
from cte group by customer_id,budget;