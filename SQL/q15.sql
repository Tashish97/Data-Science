/*
create table puzzle_input (
id int,
formula varchar(10),
value int
)
insert into puzzle_input values (1,'1+4',10),(2,'2+1',5),(3,'3-2',40),(4,'4-1',20);

O/P:
id	formula	value	(No column name)
1	1+4		10		30
2	2+1		5		15
3	3-2		40		35
4	4-1		20		10
*/

with cte as(
select *,LEFT(formula,1) a,right(formula,1) b, SUBSTRING(formula,2,1) o from puzzle_input P
),final as(
select C1.id,C1.formula,C1.value,C2.value a,C2.o,C3.value b from cte C1 join cte C2 on C1.a=C2.id join cte C3 on C1.b=C3.id
)
select id,formula, value, 
case 
when o='+' then a+b 
when o='-' then a-b
end
from final;