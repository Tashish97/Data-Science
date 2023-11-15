/*
drop table if exists students;
CREATE TABLE [students](
[studentid] [int] NULL,
[studentname] [nvarchar](255) NULL,
[subject] [nvarchar](255) NULL,
[marks] [int] NULL,
[testid] [int] NULL,
[testdate] [date] NULL
);
insert into students values (2,'Max Ruin','Subject1',63,1,'2022-01-02');
insert into students values (3,'Arnold','Subject1',95,1,'2022-01-02');
insert into students values (4,'Krish Star','Subject1',61,1,'2022-01-02');
insert into students values (5,'John Mike','Subject1',91,1,'2022-01-02');
insert into students values (4,'Krish Star','Subject2',71,1,'2022-01-02');
insert into students values (3,'Arnold','Subject2',32,1,'2022-01-02');
insert into students values (5,'John Mike','Subject2',61,2,'2022-11-02');
insert into students values (1,'John Deo','Subject2',60,1,'2022-01-02');
insert into students values (2,'Max Ruin','Subject2',84,1,'2022-01-02');
insert into students values (2,'Max Ruin','Subject3',29,3,'2022-01-03');
insert into students values (5,'John Mike','Subject3',98,2,'2022-11-02');

Q: Medium to Hard
*/

-- q1: Find the names of student who scored above average marks 

with cte as(
select *, 
case
when marks > AVG(marks) over(partition by subject) then 1 else 0
end above_avg_test_count
from students
)
select * from cte where above_avg_test_count = 1

-- q2: write a sql to find the percentage of students who scored above 90 in at least one subject

with cte as(
select *,
case
when marks>90 then 1 else 0
end above_90
from students
)
select (select count(*) from( select studentname from cte group by studentname having MAX(above_90)=1) t)*100.0/
(select count(distinct studentid) from cte);


-- q3: write sql query to get second highest and second lowest marks for each subject

with cte as(
select *,
DENSE_RANK() over(partition by subject order by marks) lowest_mark_rnk,
DENSE_RANK() over(partition by subject order by marks desc) highest_mark_rnk
from students
),cte1 as(
select *,
case
when lowest_mark_rnk=2 then marks
end lowest_mark,
case
when highest_mark_rnk=2 then marks
end highest_mark
from cte
)
select subject,max(lowest_mark) lowest_2nd_mark,max(highest_mark) highest_2nd_mark from cte1 group by subject;

-- q: add a column which has values if the score has increased compared to the previous score

select *, 
case
when LAG(marks) over(partition by studentid order by testdate,subject) is null then 'npr'
when marks>LAG(marks) over(partition by studentid order by testdate,subject) then 'inc'
else 'dec'
end
from students