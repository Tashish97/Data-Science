/*
create table tickets
(
ticket_id varchar(10),
create_date date,
resolved_date date
);
delete from tickets;
insert into tickets values
(1,'2022-08-01','2022-08-03')
,(2,'2022-08-01','2022-08-12')
,(3,'2022-08-01','2022-08-16');
create table holidays
(
holiday_date date
,reason varchar(100)
);
delete from holidays;
insert into holidays values
('2022-08-11','Rakhi'),('2022-08-15','Independence day');

Q: SQL to find business days b/w create_date and resolved_date excluding weekends and holidays
*/

select * from tickets;

-- 1st way
select 
	ticket_id,
	create_date,
	resolved_date,
	DATEDIFF(DAY,create_date,resolved_date)-(2*DATEDIFF(WEEK,create_date,resolved_date)) - num_holidays as business_days
from
(
select ticket_id,create_date,resolved_date,count(reason) num_holidays 
from tickets left join holidays on holiday_date between create_date and resolved_date
group by ticket_id,create_date,resolved_date
) tab1

-- 2nd way
select ticket_id, create_date, resolved_date,
DATEDIFF(day,create_date,resolved_date) - count(distinct reason) -2*(DATEDIFF(week,create_date,resolved_date))
business_days
from tickets left join holidays on holidays.holiday_date between tickets.create_date and tickets.resolved_date
group by ticket_id, create_date, resolved_date;