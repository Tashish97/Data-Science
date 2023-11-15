/*
create table activity (

player_id     int     ,
device_id     int     ,
event_date    date    ,
games_played  int
);

insert into activity values (1,2,'2016-03-01',5 ),(1,2,'2016-03-02',6 ),(2,3,'2017-06-25',1 )
,(3,1,'2016-03-02',0 ),(3,4,'2018-07-03',5 );

select * from activity;

questions:
--Game Play Analysis 
*/

--q1: Write an SQL query that reports the first login date for each player
with first_login as(
select *, MIN(event_date) OVER(partition by player_id) first_login_date from activity
)
select player_id,first_login_date  from first_login group by player_id,first_login_date;

--q2: Write a SQL query that reports the device that is first logged in for each player
with first_login as(
select *, MIN(event_date) OVER(partition by player_id) first_login_date from activity
)
select player_id, device_id from first_login where event_date=first_login_date;

--q3: Write an SQL query that reports for each player and date, how many games played so far by the player. 
--That is, the total number of games played by the player until that date.
select *, SUM(games_played) over(partition by player_id order by event_date) till_date_game_played from activity;

--q4: Write an SQL query that reports the fraction of players that logged in again 
--on the day after the day they first logged in, rounded to 2 decimal places

with repeat_login as(
 select *, MIN(event_date) OVER(partition by player_id) first_login_date,
 DENSE_RANK() OVER(partition by player_id order by event_date) rank_
 from activity
 ),final_data as(
 select *,
 case
 when rank_=2 and event_date = DATEADD(day,1,first_login_date) then 1
 end next_day_login
 from repeat_login
 )
 select (select count(1) from final_data where next_day_login=1)*100.0/
 (select count(distinct player_id) from final_data) [% of players]