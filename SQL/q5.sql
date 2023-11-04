/*
CREATE TABLE tweets
(
tweet_id integer,
user_id integer,
msg varchar(100),
tweet_date datetime
);

insert into tweets values
(241425,254,'If the salary is so competitive why won’t you tell me what it is?','03/01/2022 11:00:00'),
(214252,111,'Am considering taking Tesla private at $420. Funding secured.','12/30/2021 00:00:00'),
(739252,111,'Despite the constant negative press covfefe','01/01/2022 11:00:00'),
(846402,111,'Following @NickSinghTech on Twitter changed my life!','02/14/2022 11:00:00'),
(231574,148,'I no longer have a manager. I can'+'t be managed','03/23/2022 11:00:00');

Q: write a query to obtain a histogram of tweets posted per user in 2022.
Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
*/

select * from tweets;

select count_ tweet_bucket, count(user_id) usrs_num
from
(select user_id, count(1) count_
from tweets 
where DATEPART(year,tweet_date)=2022
group by user_id) tab1
group by count_;