/*
create table Ameriprise_LLC
(
teamID varchar(2),
memberID varchar(10),
Criteria1 varchar(1),
Criteria2 varchar(1)
);
insert into Ameriprise_LLC values 
('T1','T1_mbr1','Y','Y'),
('T1','T1_mbr2','Y','Y'),
('T1','T1_mbr3','Y','Y'),
('T1','T1_mbr4','Y','Y'),
('T1','T1_mbr5','Y','N'),
('T2','T2_mbr1','Y','Y'),
('T2','T2_mbr2','Y','N'),
('T2','T2_mbr3','N','Y'),
('T2','T2_mbr4','N','N'),
('T2','T2_mbr5','N','N'),
('T3','T3_mbr1','Y','Y'),
('T3','T3_mbr2','Y','Y'),
('T3','T3_mbr3','N','Y'),
('T3','T3_mbr4','N','Y'),
('T3','T3_mbr5','Y','N');

Q: write a query wherin only the people qualifies where each candidate qualifies both the criteria's i.e(Y and Y)
and within thieri group there exixts at least one other team member i.e( from each team at least two memnbers qualify)
*/

select * from Ameriprise_LLC;

with cte as(
select *,COUNT(*) over(partition by teamID) count_
from Ameriprise_LLC where Criteria1='Y' and Criteria2='Y'
)
select * from cte where count_>=2