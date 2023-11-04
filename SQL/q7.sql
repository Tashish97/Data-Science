/*
create table adobe_transactions
(
customer_id integer,
product varchar(20),
revenue int,
);

insert into adobe_transactions values
(123,'Photoshop',50),
(123,'Premier Pro',100),
(123,'After Effects',50),
(234,'Illustrator',200),
(234,'Premier Pro',100);

Q: For every customer that bought Photoshop, return a list of the customers and the total
spend on all the products except for Photoshop products.

ex O/P
customer_id revenue
123         150
*/

with cte as(
select *,
case
when product like '%photoshop%' then 0
else revenue
end except_revenue
from adobe_transactions
where customer_id in (select customer_id from adobe_transactions where lower(product) like '%photoshop%'))

select customer_id,SUM(except_revenue) revenue from cte group by customer_id;