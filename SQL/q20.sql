/*
create table brands 
(
category varchar(20),
brand_name varchar(20)
);
insert into brands values
('chocolates','5-star')
,(null,'dairy milk')
,(null,'perk')
,(null,'eclair')
,('Biscuits','britannia')
,(null,'good day')
,(null,'boost');

Q: Populate category values till the last not null value
*/

with cte as(
select *, ROW_NUMBER() over(order by(select null)) rn from brands
),indices as(
select *,LEAD(rn,1,99) over(order by (select null)) rn_ from cte where category is not null
)
select indices.category,cte.brand_name from cte left join indices ON cte.rn between indices.rn and indices.rn_