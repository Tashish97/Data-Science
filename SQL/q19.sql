/*
create table phonelog(
    Callerid int, 
    Recipientid int,
    Datecalled datetime
);

insert into phonelog(Callerid, Recipientid, Datecalled)
values(1, 2, '2019-01-01 09:00:00.000'),
       (1, 3, '2019-01-01 17:00:00.000'),
       (1, 4, '2019-01-01 23:00:00.000'),
       (2, 5, '2019-07-05 09:00:00.000'),
       (2, 3, '2019-07-05 17:00:00.000'),
       (2, 3, '2019-07-05 17:20:00.000'),
       (2, 5, '2019-07-05 23:00:00.000'),
       (2, 3, '2019-08-01 09:00:00.000'),
       (2, 3, '2019-08-01 17:00:00.000'),
       (2, 5, '2019-08-01 19:30:00.000'),
       (2, 4, '2019-08-02 09:00:00.000'),
       (2, 5, '2019-08-02 10:00:00.000'),
       (2, 5, '2019-08-02 10:45:00.000'),
       (2, 4, '2019-08-02 11:00:00.000');

Q: Find the callers whose first and last receiver for a day are same
*/

with cte as(
select *,CAST(Datecalled as DATE) as only_date from phonelog
),fal as(
select *, 
FIRST_VALUE(Recipientid) over(partition by Callerid,only_date order by Datecalled) first_receiver,
FIRST_VALUE(Recipientid) over(partition by Callerid,only_date order by Datecalled DESC) last_receiver
from cte
)
select Callerid,only_date,first_receiver from fal where first_receiver = last_receiver
group by Callerid,only_date,first_receiver
;