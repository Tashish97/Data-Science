/*

people relationships

Child x Father X Mother
create table people
(id int primary key not null,
 name varchar(20),
 gender char(2));

create table relations
(
    c_id int,
    p_id int,
    FOREIGN KEY (c_id) REFERENCES people(id),
    foreign key (p_id) references people(id)
);

insert into people (id, name, gender)
values
    (107,'Days','F'),
    (145,'Hawbaker','M'),
    (155,'Hansel','F'),
    (202,'Blackston','M'),
    (227,'Criss','F'),
    (278,'Keffer','M'),
    (305,'Canty','M'),
    (329,'Mozingo','M'),
    (425,'Nolf','M'),
    (534,'Waugh','M'),
    (586,'Tong','M'),
    (618,'Dimartino','M'),
    (747,'Beane','M'),
    (878,'Chatmon','F'),
    (904,'Hansard','F');

insert into relations(c_id, p_id)
values
    (145, 202),
    (145, 107),
    (278,305),
    (278,155),
    (329, 425),
    (329,227),
    (534,586),
    (534,878),
    (618,747),
    (618,904);
*/

with cte as(
select R.c_id,R.p_id,P.name c_name,P1.name p_name,
case when P1.gender='M' then P1.name end male,
case when P1.gender='F' then P1.name end female 
from relations R left join people P ON R.c_id=P.id left join people P1 ON R.p_id=P1.id
)
select c_name,MAX(male) as Father,Max(female) as Mother from cte group by c_name