/*
create table business_city (
business_date date,
city_id int
);
delete from business_city;
insert into business_city
values(cast('2020-01-02' as date),3),(cast('2020-07-01' as date),7),(cast('2021-01-01' as date),3),(cast('2021-02-03' as date),19)
,(cast('2022-12-01' as date),3),(cast('2022-12-15' as date),3),(cast('2022-02-28' as date),12);

Q: write sql query to identify yearwise count of new cities where udan has started operations
*/
select * from business_city;
with cte as(
select YEAR(business_date) year_,* from business_city
),cte1 as(
select a.year_,a.city_id,b.year_ null_year from cte a left join cte b on a.year_>b.year_ and a.city_id=b.city_id
)
select year_,COUNT(*) [#_new_cities] from cte1 where null_year is null group by year_;