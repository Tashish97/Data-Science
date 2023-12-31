/*
CREATE TABLE [emp_salary]
(
    [emp_id] INTEGER  NOT NULL,
    [name] NVARCHAR(20)  NOT NULL,
    [salary] NVARCHAR(30),
    [dept_id] INTEGER
);


INSERT INTO emp_salary
(emp_id, name, salary, dept_id)
VALUES(101, 'sohan', '3000', '11'),
(102, 'rohan', '4000', '12'),
(103, 'mohan', '5000', '13'),
(104, 'cat', '3000', '11'),
(105, 'suresh', '4000', '12'),
(109, 'mahesh', '7000', '12'),
(108, 'kamal', '8000', '11');

Q : write sql query to find whose salary is same in same department

*/

select * from emp_salary order by dept_id,salary;

select a.emp_id,a.name,a.salary,a.dept_id 
from emp_salary a left join emp_salary b on a.salary=b.salary and a.dept_id=b.dept_id 
group by a.emp_id,a.name,a.salary,a.dept_id having count(1)>1;

