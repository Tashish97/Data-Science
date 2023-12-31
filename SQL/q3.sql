/*
create table hospital ( emp_id int
, action varchar(10)
, time datetime);

insert into hospital values ('1', 'in', '2019-12-22 09:00:00');
insert into hospital values ('1', 'out', '2019-12-22 09:15:00');
insert into hospital values ('2', 'in', '2019-12-22 09:00:00');
insert into hospital values ('2', 'out', '2019-12-22 09:15:00');
insert into hospital values ('2', 'in', '2019-12-22 09:30:00');
insert into hospital values ('3', 'out', '2019-12-22 09:00:00');
insert into hospital values ('3', 'in', '2019-12-22 09:15:00');
insert into hospital values ('3', 'out', '2019-12-22 09:30:00');
insert into hospital values ('3', 'in', '2019-12-22 09:45:00');
insert into hospital values ('4', 'in', '2019-12-22 09:45:00');
insert into hospital values ('5', 'out', '2019-12-22 09:40:00');

Q : write sql query to find the patients present inside the hospital
*/

select * from hospital;


-- 1st way
select  
distinct emp_id
from(
select *, first_value(action) over(partition by emp_id order by time DESC) last_action from hospital
) tab1
where last_action = 'in';

-- 2nd way
select h.* from hospital h join
(select emp_id,MAX(time) mtime from hospital group by emp_id) b
on h.time=b.mtime and h.emp_id = b.emp_id where h.action ='in';