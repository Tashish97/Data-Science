/*
create table section_data
(
section varchar(5),
number integer
)
insert into section_data
values ('A',5),('A',7),('A',10) ,('B',7),('B',9),('B',10) ,('C',9),('C',7),('C',9) ,('D',10),('D',3),('D',8);

Problem statement : we have a table which stores data of multiple sections. every section has 3 numbers
we have to find top 4 numbers from any 2 sections(2 numbers each) whose addition should be maximum
so in this case we will choose section b where we have 19(10+9) then we need to choose either C or D
because both has sum of 18 but in D we have 10 which is big from 9 so we will give priority to D.
*/

select * from section_data;
with cte as(
select *,lead(number) over(partition by section order by number desc) lag_number,
number + lead(number) over(partition by section order by number desc) lag_sum,
MAX(number) over(partition by section order by number desc) lar_num
from section_data
),cte1 AS(
select *, MAX(lag_sum) over(partition by section) section_sum from cte where lag_sum is not null 
),cte2 as(
select *, DENSE_RANK() over(order by section_sum desc) section_rnk,
DENSE_RANK()  over(partition by section_sum order by lar_num DESC) num_rnk
from cte1
)
select section,number from cte2 where section_rnk<=2 and num_rnk=1 order by section