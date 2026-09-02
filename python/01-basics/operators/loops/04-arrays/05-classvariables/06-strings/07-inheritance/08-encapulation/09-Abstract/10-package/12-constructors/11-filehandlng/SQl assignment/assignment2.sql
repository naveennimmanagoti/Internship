create database assignment2;
use assignment2;

create table salespeople (
    snum int primary key,
    sname varchar(50),
    city varchar(50),
    comm decimal(4,2)
);

insert into salespeople values
(1001,'Peel','London',0.12),
(1002,'Serres','San Jose',0.13),
(1004,'Motika','London',0.11),
(1007,'Rafkin','Barcelona',0.15),
(1003,'Axelrod','New York',0.10);

create table cust (
    cnum int primary key,
    cname varchar(50),
    city varchar(50),
    rating int,
    snum int
);

insert into cust values
(2001,'Hoffman','London',100,1001),
(2002,'Giovanne','Rome',200,1003),
(2003,'Liu','San Jose',300,1002),
(2004,'Grass','Brelin',100,1002),
(2006,'Clemens','London',300,1007),
(2007,'Pereira','Rome',100,1004);

create table orders (
    onum int primary key,
    amt decimal(10,2),
    odate date,
    cnum int,
    snum int
);

insert into orders values
(3001,18.69,'1994-10-03',2008,1007),
(3003,767.19,'1994-10-03',2001,1001),
(3002,1900.10,'1994-10-03',2007,1004),
(3005,5160.45,'1994-10-03',2003,1002),
(3006,1098.16,'1994-10-04',2008,1007),
(3009,1713.23,'1994-10-04',2002,1003),
(3007,75.75,'1994-10-05',2004,1002),
(3008,4723.00,'1994-10-05',2006,1001),
(3010,1309.95,'1994-10-06',2004,1002),
(3011,9891.88,'1994-10-06',2006,1001);

-- 1
select snum,sname,city,comm from salespeople;

-- 2
select distinct snum from orders;

-- 3
select sname,comm from salespeople where city='London';

-- 4
select cname from cust where rating=100;

-- 5
select onum,amt,odate from orders;

-- 6
select cname from cust where city='San Jose' and rating>200;

-- 7
select cname from cust where city='San Jose' or rating>200;

-- 8
select * from orders where amt>1000;

-- 9
select sname,city from salespeople where city='London' and comm>0.10;

-- 10
select cname from cust where rating>100 or city='Rome';

-- 11
select sname,city from salespeople where city in ('Barcelona','London');

-- 12
select sname,comm from salespeople where comm>0.10 and comm<0.12;

-- 13
select cname from cust where city is null;

-- 14
select * from orders where odate in ('1994-10-03','1994-10-04');

-- 15
select cname from cust where snum in
(select snum from salespeople where sname in ('Peel','Motika'));

-- 16
select cname from cust where cname like 'A%' or cname like 'B%';

-- 17
select onum from orders where amt<>0 and amt is not null;

-- 18
select count(distinct snum) from orders;

-- 19
select odate,snum,max(amt) as largest_order
from orders
group by odate,snum
order by odate,snum;

-- 20
select odate,snum,max(amt) as largest_order
from orders
where amt>3000
group by odate,snum
order by odate,snum;

-- 21
select odate,sum(amt) as total_amount
from orders
group by odate
order by total_amount desc
limit 1;

-- 22
select count(*) from orders where odate='1994-10-03';

-- 23
select count(distinct city) from cust where city is not null;

-- 24
select cnum,min(amt) as smallest_order
from orders
group by cnum;

-- 25
select min(cname) from cust where cname like 'G%';

-- 26
select concat('For ',date_format(odate,'%d/%m/%y'),' there are ',count(*),' orders.')
as result
from orders
group by odate;

-- 27
select onum,snum,amt*0.12 as commission
from orders
order by snum;

-- 28
select concat('For the city (',city,'), the highest rating is : (',max(rating),')')
as result
from cust
group by city;

-- 29
select odate,sum(amt) as total_amount
from orders
group by odate
order by total_amount desc;

-- 30
select sname,cname
from salespeople,cust
where salespeople.city=cust.city;

-- 31
select cname,sname
from cust,salespeople
where cust.snum=salespeople.snum;

-- 32
select onum,cname
from orders,cust
where orders.cnum=cust.cnum;

-- 33
select onum,sname,cname
from orders,cust,salespeople
where orders.cnum=cust.cnum
and orders.snum=salespeople.snum;

-- 34
select cname,sname,comm
from cust,salespeople
where comm>0.12
and cust.snum=salespeople.snum;

-- 35
select sname,amt*comm as commission
from orders,cust,salespeople
where rating>100
and salespeople.snum=cust.snum
and salespeople.snum=orders.snum
and cust.cnum=orders.cnum;

-- 36
select a.cname,b.cname,a.rating
from cust a,cust b
where a.rating=b.rating
and a.cnum<>b.cnum;

-- 37
select a.cname,b.cname,a.rating
from cust a,cust b
where a.rating=b.rating
and a.cnum<b.cnum;

-- 38
select c.cname,s.sname
from cust c
cross join
(select * from salespeople order by snum limit 3) s
order by c.cname,s.sname;

-- 39
select cname
from cust
where city in
(select c.city
from cust c
join salespeople s on c.snum=s.snum
where s.sname='Serres');

-- 40
select a.cname,b.cname,a.snum
from cust a,cust b
where a.snum=b.snum
and a.cnum<b.cnum;

-- 41
select a.sname,b.sname
from salespeople a,salespeople b
where a.city=b.city
and a.snum<b.snum;

-- 42
select c.cname,a.onum,b.onum
from orders a,orders b,cust c
where a.cnum=b.cnum
and a.onum>b.onum
and c.cnum=a.cnum;

-- 43
select cname,city
from cust
where rating=(select rating from cust where cname='Hoffman')
and cname<>'Hoffman';

-- 44
select onum
from orders
where snum=(select snum from salespeople where sname='Motika');

-- 45
select o.onum,s.sname,c.cname,o.amt
from orders o
join salespeople s on o.snum=s.snum
join cust c on o.cnum=c.cnum
where o.snum=(select snum from cust where cname='Hoffman');

-- 46
select *
from orders
where amt>(select avg(amt)
from orders
where odate='1994-10-04');

-- 47
select avg(comm)
from salespeople
where city='London';

-- 48
select o.snum,o.cnum
from orders o
where o.snum in
(select c.snum from cust c where c.city='London');

-- 49
select comm
from salespeople
where snum in
(select snum from cust where city='London');

-- 50
select cnum,cname
from cust
where cnum=(select snum+1000
from salespeople
where sname='Serres');

-- 51
select count(*)
from cust
where rating>(select avg(rating)
from cust
where city='San Jose');