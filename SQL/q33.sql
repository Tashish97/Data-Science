/*
drop table if exists orders;
create table orders
(
order_id int,
customer_id int,
product_id int,
);

insert into orders VALUES 
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 2, 1),
(2, 2, 2),
(2, 2, 4),
(3, 1, 5);

drop table if exists products;
create table products (
id int,
name varchar(10)
);
insert into products VALUES 
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

Q:Find product pairs most commonly purchased together
*/

select * from orders;
select * from products;

select distinct p1.name+' '+p2.name pair, count(1) over(partition by p1.name,p2.name)  pair_frequency
from orders O1 left join orders O2 ON O1.order_id=O2.order_id and O1.product_id<O2.product_id
join products p1 on O1.product_id=p1.id join products p2 on O2.product_id=p2.id
where O2.product_id is not null