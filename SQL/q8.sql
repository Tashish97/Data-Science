/*
create table purchases(
	user_id int,
	product_id int,
	quantity int,
	purchase_date datetime
);

insert into purchases values(536, 3223, 6, '01/11/2022 12:33:44');
insert into purchases values(827, 3585, 35, '02/20/2022 14:05:26');
insert into purchases values(536, 3223, 5, '03/02/2022 09:33:28');
insert into purchases values(536, 1435, 10, '03/02/2022 08:40:00');
insert into purchases values(827, 2452, 45, '04/09/2022 00:00:00');
insert into purchases values(333, 1122, 9, '2022-02-06 01:00:00');
insert into purchases values(333, 1122, 10, '2022-02-06 02:00:00');
insert into purchases values(333, 1122, 8, '2022-02-06 14:56:03');
Q: write a query to find the number of users who purchased the same product on two or more different days
i.e not on the same day

O/P
users_num
1
*/

select * from purchases;

select count(*) users_num from
(
select user_id, product_id
from purchases
group by user_id, product_id having COUNT(distinct CAST(purchase_date as date))=2
) tb1