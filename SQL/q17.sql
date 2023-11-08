/*
Create Table Trade_tbl(
TRADE_ID varchar(20),
Trade_Timestamp time,
Trade_Stock varchar(20),
Quantity int,
Price Float
)

Insert into Trade_tbl Values('TRADE1','10:01:05','ITJunction4All',100,20)
Insert into Trade_tbl Values('TRADE2','10:01:06','ITJunction4All',20,15)
Insert into Trade_tbl Values('TRADE3','10:01:08','ITJunction4All',150,30)
Insert into Trade_tbl Values('TRADE4','10:01:09','ITJunction4All',300,32)
Insert into Trade_tbl Values('TRADE5','10:10:00','ITJunction4All',-100,19)
Insert into Trade_tbl Values('TRADE6','10:10:01','ITJunction4All',-300,19)

Q: Write SQL to find all couples of trade for same stock that happened in the range of 10 seconds
and havinf price difference by more than 10%.
Output result should also list the percentage of price difference b/w the 2 trades

*/

with cte as(
select *,DATEADD(SECOND,10,Trade_Timestamp) new_Trade_Timestamp from Trade_tbl
),cte2 as(
select 
a.TRADE_ID first_trade, b.TRADE_ID second_trade, a.Price first_trade_price, b.Price second_trade_price,
case 
when a.Price>b.Price then (a.Price-b.Price)*100/a.Price 
else (b.Price-a.Price)*100/a.Price 
end per_diff
from cte a join cte b ON b.Trade_Timestamp between a.Trade_Timestamp and a.new_Trade_Timestamp
)
select * from cte2 where per_diff>10