/*
create table family 
(
person varchar(5),
type varchar(10),
age int
);
delete from family ;
insert into family values 
('A1','Adult',54),
('A2','Adult',53),
('A3','Adult',52),
('A4','Adult',58),
('A5','Adult',54),
('C1','Child',20),
('C2','Child',19),
('C3','Child',22),
('C4','Child',15);
Q: Pairing child and adult.
   Each child must be paired with an adult so that they can ride a fair.
   Adult can ride the fair alone but a child can't
*/

select * from family;

with adults as (
select *, DENSE_RANK() Over(order by person) as rnk_ from family where type = 'Adult'
)
,childs as(
select *, DENSE_RANK() Over(order by person) as rnk_  from family where type = 'Child'
)

select a.person, c.person from adults a left join childs c on a.rnk_ = c.rnk_

/*
Q: Pairing based on age
   such that the eldest adult is paired with youngest child
*/

select * from family;

with adults as (
select *, DENSE_RANK() Over(order by age DESC,person) as rnk_ from family where type = 'Adult'
)
,childs as(
select *, DENSE_RANK() Over(order by age) as rnk_  from family where type = 'Child'
)

select a.person, c.person from adults a left join childs c on a.rnk_ = c.rnk_