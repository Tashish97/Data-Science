/*
create table players
(player_id int,
group_id int);

insert into players values (15,1);
insert into players values (25,1);
insert into players values (30,1);
insert into players values (45,1);
insert into players values (10,2);
insert into players values (35,2);
insert into players values (50,2);
insert into players values (20,3);
insert into players values (40,3);

create table matches
(
match_id int,
first_player int,
second_player int,
first_score int,
second_score int);

insert into matches values (1,15,45,3,0);
insert into matches values (2,30,25,1,2);
insert into matches values (3,30,15,2,0);
insert into matches values (4,40,20,5,2);
insert into matches values (5,35,50,1,1);

Q:Write an SQL query to find the winner in each group ADD
The winner in each group is the player who scored the maximum total points within each group.
In the case of a tie, the lowest player_id wins.

*/

select * from matches;
select * from players;

with cte as(
select a.player_id,b.first_score, a.group_id, 
DENSE_RANK() over(partition by group_id order by first_score desc, player_id) rank_
from players a left join
(select first_player,first_score from matches
union all
select second_player,second_score from matches) b on a.player_id=b.first_player
)

select group_id,player_id,first_score score from cte where rank_=1;