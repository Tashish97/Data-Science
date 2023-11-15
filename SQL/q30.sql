/*
drop table if exists users;
create table users (
user_id         int     ,
join_date       date    ,
favorite_brand  varchar(50));

create table orders (
order_id       int     ,
order_date     date    ,
item_id        int     ,
buyer_id       int     ,
seller_id      int 
);

create table items
(
item_id        int     ,
item_brand     varchar(50)
);


insert into users values (1,'2019-01-01','Lenovo'),(2,'2019-02-09','Samsung'),(3,'2019-01-19','LG'),(4,'2019-05-21','HP');

insert into items values (1,'Samsung'),(2,'Lenovo'),(3,'LG'),(4,'HP');

insert into orders values (1,'2019-08-01',4,1,2),(2,'2019-08-02',2,1,3),(3,'2019-08-03',3,2,3),(4,'2019-08-04',1,4,2)
,(5,'2019-08-04',1,3,4),(6,'2019-08-05',2,2,4);

Q: Write a SQL query to find for each seller, whether the brand of the second item sold(by date), is their favourite brand
If a seller sold less than two items, report the answer for that seller as no

*/

select * from users;
select * from orders;
select * from items;

with cte as(
select U.user_id,O.order_date,I.item_brand,U.favorite_brand,
DENSE_RANK() over(partition by seller_id order by order_date) rank_ , 
COUNT(*) over(partition by seller_id) seller_sell_count
from users U left join orders O  on O.seller_id=U.user_id left join items I on O.item_id=I.item_id
),cte1 as(
select *,
case 
when item_brand=favorite_brand and rank_=2 and seller_sell_count>=2 then 'yes' 
when seller_sell_count<2 then 'no'
else 'no'
end flag
from cte
)
select user_id,MAX(flag) fav_brand from cte1 group by user_id