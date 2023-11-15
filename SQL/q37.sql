/*
drop table if exists covid;
create table covid(city varchar(50),days date,cases int);

insert into covid values('DELHI','2022-01-01',100);
insert into covid values('DELHI','2022-01-02',200);
insert into covid values('DELHI','2022-01-03',300);
insert into covid values('MUMBAI','2022-01-01',100);
insert into covid values('MUMBAI','2022-01-02',100);
insert into covid values('MUMBAI','2022-01-03',300);
insert into covid values('CHENNAI','2022-01-01',100);
insert into covid values('CHENNAI','2022-01-02',200);
insert into covid values('CHENNAI','2022-01-03',150);
insert into covid values('BANGALORE','2022-01-01',100);
insert into covid values('BANGALORE','2022-01-02',300);
insert into covid values('BANGALORE','2022-01-03',200);
insert into covid values('BANGALORE','2022-01-04',400);

Q: Find cities where the covid cases are increasing continuously
*/

with cte as(
select *, 
case
when cases-LAG(cases,1,0) over(partition by city order by days)>1 then 1 else 0
end growth_count
,
COUNT(*) over(partition by city) row_count
from covid
)
select city from cte group by city having sum(growth_count)=MAX(row_count)