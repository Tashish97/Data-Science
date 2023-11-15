/*
CREATE TABLE events (
ID int,
event varchar(255),
YEAR INt,
GOLD varchar(255),
SILVER varchar(255),
BRONZE varchar(255)
);

delete from events;

INSERT INTO events VALUES (1,'100m',2016, 'Amthhew Mcgarray','donald','barbara');
INSERT INTO events VALUES (2,'200m',2016, 'Nichole','Alvaro Eaton','janet Smith');
INSERT INTO events VALUES (3,'500m',2016, 'Charles','Nichole','Susana');
INSERT INTO events VALUES (4,'100m',2016, 'Ronald','maria','paula');
INSERT INTO events VALUES (5,'200m',2016, 'Alfred','carol','Steven');
INSERT INTO events VALUES (6,'500m',2016, 'Nichole','Alfred','Brandon');
INSERT INTO events VALUES (7,'100m',2016, 'Charles','Dennis','Susana');
INSERT INTO events VALUES (8,'200m',2016, 'Thomas','Dawn','catherine');
INSERT INTO events VALUES (9,'500m',2016, 'Thomas','Dennis','paula');
INSERT INTO events VALUES (10,'100m',2016, 'Charles','Dennis','Susana');
INSERT INTO events VALUES (11,'200m',2016, 'jessica','Donald','Stefeney');
INSERT INTO events VALUES (12,'500m',2016,'Thomas','Steven','Catherine');

Q : Find number of gold medals for winners, who only won gold medals
Expected o/p:
GOLD	          Number of Medals
Amthhew Mcgarray	1
Charles				3
jessica				1
Ronald				1
Thomas				3
*/

select * from events;

-- 1st way
select a.GOLD,COUNT(1)[Number of Medals] from events a left join events b on a.GOLD=b.SILVER left join events c on a.GOLD=c.BRONZE
where b.SILVER is null and c.BRONZE is null
group by a.GOLD;

-- 2nd way
select GOLD,count(*) from events 
where GOLD not in (select SILVER from events union select BRONZE from events)
group by GOLD;