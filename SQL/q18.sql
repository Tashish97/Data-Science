/*
create table employee 
(
emp_name varchar(10),
dep_id int,
salary int
);
delete from employee;
insert into employee values 
('Siva',1,30000),('Ravi',2,40000),('Prasad',1,50000),('Sai',2,20000)

Q: Find employee names with highest and lowest salary in each department
*/

select * from employee;
with cte as(
select *,rank() over(partition by dep_id order by salary desc) highest_salary,
rank() over(partition by dep_id order by salary) lowest_salary 
from employee
), names_added as(
select dep_id,
case
when highest_salary=1 then emp_name
end highest_salary,
case
when lowest_salary=1 then emp_name
end lowest_salary
from cte)
select dep_id, MAX(highest_salary) emp_name_max_salary
, MIN(lowest_salary) emp_name_min_salary
from names_added group by dep_id;


