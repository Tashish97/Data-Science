/*
Create table candidates(
id int primary key,
positions varchar(10) not null,
salary int not null);

test case 1:
delete from candidates;
insert into candidates values(1,'junior',5000);
insert into candidates values(2,'junior',7000);
insert into candidates values(3,'junior',7000);
insert into candidates values(4,'senior',10000);
insert into candidates values(5,'senior',30000);
insert into candidates values(6,'senior',20000);
O/P:
juniors	seniors
2	    2

test case 2:
delete from candidates;
insert into candidates values(20,'junior',10000);
insert into candidates values(30,'senior',15000);
insert into candidates values(40,'senior',30000);
O/P:
juniors	seniors
0		2

test case 3:
delete from candidates;
insert into candidates values(1,'junior',15000);
insert into candidates values(2,'junior',15000);
insert into candidates values(3,'junior',20000);
insert into candidates values(4,'senior',60000);
O/P:
juniors	seniors
3		0

test case 4:
delete from candidates;
insert into candidates values(10,'junior',10000);
insert into candidates values(40,'junior',10000);
insert into candidates values(20,'senior',15000);
insert into candidates values(30,'senior',30000);
insert into candidates values(50,'senior',15000);
O/P:
juniors	seniors
2		2

Q: A certain company has to hire candidates within a budget of $50000, they prefer to hire seniors and only if the budget allows thay hire juniors.
Say
For the 1st test case
id 4 and 6 are considered who are seniors as their total budget(30000) falls under 50000
and with remaining 20000 they hire the 3 juniors as they all fit in the remaining budget
*/

select * from candidates order by positions,salary;

with senior as(
select *,sum(salary) over(order by salary) running_salary ,
case when sum(salary) over(order by salary) > 50000 then 1 else 0 end over_budget
from candidates where positions = 'senior'
),junior as(
select *,sum(salary) over(order by salary) running_salary ,
case when sum(salary) over(order by salary) > 50000-(select max(running_salary) from senior where over_budget=0)then 1 else 0 end over_budget
from candidates where positions = 'junior'
)
select (select count(*) from junior where over_budget=0) as juniors,(select count(*) from senior where over_budget=0) seniors