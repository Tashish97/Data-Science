/*
create table icc_world_cup_data
(
match_no int,
team_1 Varchar(20),
team_2 Varchar(20),
winner Varchar(20)
);
INSERT INTO icc_world_cup_data values(1,'ENG','NZ','NZ');
INSERT INTO icc_world_cup_data values(2,'PAK','NED','PAK');
INSERT INTO icc_world_cup_data values(3,'AFG','BAN','BAN');
INSERT INTO icc_world_cup_data values(4,'SA','SL','SA');
INSERT INTO icc_world_cup_data values(5,'AUS','IND','IND');
INSERT INTO icc_world_cup_data values(6,'NZ','NED','NZ');
INSERT INTO icc_world_cup_data values(7,'ENG','BAN','ENG');
INSERT INTO icc_world_cup_data values(8,'SL','PAK','PAK');
INSERT INTO icc_world_cup_data values(9,'AFG','IND','IND');
INSERT INTO icc_world_cup_data values(10,'SA','AUS','SA');
INSERT INTO icc_world_cup_data values(11,'BAN','NZ','NZ');
INSERT INTO icc_world_cup_data values(12,'PAK','IND','IND');
INSERT INTO icc_world_cup_data values(12,'SA','IND','DRAW');

Q: Generate points table
*/

select * from icc_world_cup_data;

select teams,COUNT(1) [Total Matches],SUM(win) Wins ,COUNT(1)- SUM(win) -SUM(draw) Losses, SUM(draw) Draw from
(
select 
team_1 teams, 
case when team_1=winner then 1 else 0 end win,
case when winner='DRAW' then 1 else 0 end draw from icc_world_cup_data
union all 
select team_2,
case when team_2=winner then 1 else 0 end,
case when winner='DRAW' then 1 else 0 end draw
from icc_world_cup_data
) tab1
group by teams