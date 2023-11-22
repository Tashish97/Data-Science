/*
drop table if exists flights;
CREATE TABLE flights 
(
    cid VARCHAR(512),
    fid VARCHAR(512),
    origin VARCHAR(512),
    Destination VARCHAR(512)
);

INSERT INTO flights (cid, fid, origin, Destination) VALUES ('1', 'f1', 'Del', 'Hyd');
INSERT INTO flights (cid, fid, origin, Destination) VALUES ('1', 'f2', 'Hyd', 'Blr');
INSERT INTO flights (cid, fid, origin, Destination) VALUES ('2', 'f3', 'Mum', 'Agra');
INSERT INTO flights (cid, fid, origin, Destination) VALUES ('2', 'f4', 'Agra', 'Kol');

Q: Final origin and destination for each cid
*/

select * from flights;

with cte as(
select *, ROW_NUMBER() over(order by (select null)) rn from flights
)

select a.cid,a.origin,b.Destination from cte a  join cte b on a.Destination=b.origin and a.rn<b.rn;