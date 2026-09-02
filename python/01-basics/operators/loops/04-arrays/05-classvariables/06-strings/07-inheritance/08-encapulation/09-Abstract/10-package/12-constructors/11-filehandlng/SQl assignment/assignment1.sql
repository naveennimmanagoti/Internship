create database assignment;
use assignment;

create table salespeople (
    snum int primary key,
    sname varchar(50),
    city varchar(50),
    comm decimal(4,2)
);

insert into salespeople values
(1001, 'Peel', 'London', 0.12),
(1002, 'Serres', 'San Jose', 0.13),
(1004, 'Motika', 'London', 0.11),
(1007, 'Rafkin', 'Barcelona', 0.15),
(1003, 'Axelrod', 'New York', 0.10);

create table cust (
    cnum int primary key,
    cname varchar(50),
    city varchar(50),
    rating int,
    snum int
);

insert into cust values
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanne', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 300, 1002),
(2004, 'Grass', 'Brelin', 100, 1002),
(2006, 'Clemens', 'London', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004);

create table orders (
    onum int primary key,
    amt decimal(10,2),
    odate date,
    cnum int,
    snum int
);

insert into orders values
(3001, 18.69, '1994-10-03', 2008, 1007),
(3003, 767.19, '1994-10-03', 2001, 1001),
(3002, 1900.10, '1994-10-03', 2007, 1004),
(3005, 5160.45, '1994-10-03', 2003, 1002),
(3006, 1098.16, '1994-10-04', 2008, 1007),
(3009, 1713.23, '1994-10-04', 2002, 1003),
(3007, 75.75, '1994-10-05', 2004, 1002),
(3008, 4723.00, '1994-10-05', 2006, 1001),
(3010, 1309.95, '1994-10-06', 2004, 1002),
(3011, 9891.88, '1994-10-06', 2006, 1001);

-- Q1
select snum, sname, city, comm from salespeople;

-- Q2
select distinct snum from orders;

-- Q3
select sname, comm from salespeople where city = 'London';

-- Q4
select * from cust where rating = 100;

-- Q5
select onum, amt, odate from orders;

-- Q6
select * from cust where city = 'San Jose' and rating > 200;

-- Q7
select * from cust where city = 'San Jose' or rating > 200;

-- Q8
select * from orders where amt > 1000;

-- Q9
select sname, city from salespeople where city = 'London' and comm > 0.10;

-- Q10
select * from cust where rating > 100 or city = 'Rome';

-- Q11
select * from salespeople where city = 'Barcelona' or city = 'London';

-- Q12
select * from salespeople where comm > 0.10 and comm < 0.12;

-- Q13
select * from cust where city is null;

-- Q14
select * from orders where odate in ('1994-10-03','1994-10-04');

-- Q15
select * from cust where snum in (select snum from salespeople where sname in ('Peel','Motika'));

-- Q16
select * from cust where cname like 'A%' or cname like 'B%';

-- Q17
select * from orders where amt is not null and amt <> 0;

-- Q18
select count(distinct snum) from orders;

-- Q19
select snum, max(amt) from orders group by snum;

-- 20
select snum, max(amt) as largest_order from orders where amt > 3000 group by snum;

-- 21
select odate, sum(amt) as total_amount from orders group by odate order by total_amount desc limit 1;

-- 22
select count(*) as order_count from orders where odate = '1994-10-03';

-- 23
select count(distinct city) as city_count from cust where city is not null;

-- 24
select cnum, min(amt) as smallest_order from orders group by cnum;

-- 25
select cname from cust where cname like 'G%' order by cname limit 1;

-- 26
select date_format(odate,'%d/%m/%y') as date, count(*) as order_count from orders group by odate;

-- 27
select onum, snum, amt * 0.12 as commission from orders;

-- 28
select concat('For the city ',city,', the highest rating is : ',max(rating)) as result from cust group by city;

-- 29
select odate, sum(amt) as total_amount from orders group by odate order by total_amount desc;

-- 30
select s.sname, c.cname, s.city from salespeople s join cust c on s.city = c.city;

-- 31
select c.cname, s.sname from cust c join salespeople s on c.snum = s.snum;

-- 32
select o.onum, c.cname from orders o join cust c on o.cnum = c.cnum;

-- 33
select o.onum, s.sname, c.cname from orders o join salespeople s on o.snum = s.snum join cust c on o.cnum = c.cnum;

-- 34
select c.* from cust c join salespeople s on c.snum = s.snum where s.comm > 0.12;

-- 35
select o.onum, o.amt * s.comm as commission from orders o join salespeople s on o.snum = s.snum join cust c on o.cnum = c.cnum where c.rating > 100;

-- 36
select c1.cname, c2.cname, c1.rating from cust c1 join cust c2 on c1.rating = c2.rating and c1.cnum <> c2.cnum;

-- 37
select c1.cname, c2.cname, c1.rating from cust c1 join cust c2 on c1.rating = c2.rating and c1.cnum < c2.cnum;

-- 38
select s1.sname as salesperson1, s2.sname as salesperson2, s3.sname as salesperson3 from salespeople s1 cross join salespeople s2 cross join salespeople s3 where s1.snum < s2.snum and s2.snum < s3.snum;

-- 39
select distinct c.* from cust c where c.city in (select c2.city from cust c2 join salespeople s on c2.snum = s.snum where s.sname = 'Serres');

-- 40
select c1.cname, c2.cname, c1.snum from cust c1 join cust c2 on c1.snum = c2.snum and c1.cnum < c2.cnum;

-- 41
select s1.sname, s2.sname, s1.city from salespeople s1 join salespeople s2 on s1.city = s2.city and s1.snum < s2.snum;

-- 42
select o1.onum, o2.onum, c.cname from orders o1 join orders o2 on o1.cnum = o2.cnum and o1.onum < o2.onum join cust c on o1.cnum = c.cnum;

-- 43
select cname, city from cust where rating = (select rating from cust where cname = 'Hoffman');

-- 44
select o.* from orders o join salespeople s on o.snum = s.snum where s.sname = 'Motika';

-- 45
select o.* from orders o where o.snum = (select snum from cust where cname = 'Hoffman');

-- 46
select * from orders where amt > (select avg(amt) from orders where odate = '1994-10-04');

-- 47
select avg(comm) as average_commission from salespeople where city = 'London';

-- 48
select o.* from orders o join cust c on o.cnum = c.cnum where c.city = 'London';

-- 49
select distinct s.comm from salespeople s join cust c on s.snum = c.snum where c.city = 'London';

-- 50
select * from cust where cnum = (select snum + 1000 from salespeople where sname = 'Serres');

-- 51
select count(*) as customer_count from cust where rating > (select avg(rating) from cust where city = 'San Jose');

-- 52
select o.* from orders o join cust c on o.cnum = c.cnum where c.cname = 'Cisnerous';

-- 53
select c.cname, c.rating from cust c join orders o on c.cnum = o.cnum group by c.cnum, c.cname, c.rating having avg(o.amt) > (select avg(amt) from orders);

-- 54
select snum, sum(amt) as total_amount from orders group by snum having sum(amt) > (select max(amt) from orders);

-- 55
select distinct c.* from cust c join orders o on c.cnum = o.cnum where o.odate = '1994-10-03';

-- 56
select s.snum, s.sname from salespeople s join cust c on s.snum = c.snum group by s.snum, s.sname having count(c.cnum) > 1;

-- 57
select o.onum, o.cnum, o.snum as credited_snum, c.snum as correct_snum from orders o join cust c on o.cnum = c.cnum where o.snum <> c.snum;
-- 58
select o.* from orders o where o.amt > (select avg(o2.amt) from orders o2 where o2.cnum = o.cnum);

-- 59
select odate, sum(amt) as total_amount from orders group by odate having sum(amt) >= (select max(amt) from orders) + 2000;

-- 60
select cnum, cname, city from cust c where rating = (select max(c2.rating) from cust c2 where c2.city = c.city);

-- 61 using join
select distinct s.snum, s.sname, s.city from salespeople s join cust c on s.city = c.city where c.snum <> s.snum;

-- 61 using correlated subquery
select s.snum, s.sname, s.city from salespeople s where exists (select 1 from cust c where c.city = s.city and c.snum <> s.snum);

-- 62
select cnum, cname, city from cust where exists (select 1 from cust where city = 'San Jose');

-- 63
select snum from cust group by snum having count(*) > 1;

-- 64
select s.snum, s.sname, s.city from salespeople s join cust c on s.snum = c.snum group by s.snum, s.sname, s.city having count(c.cnum) > 1;

-- 65
select snum from cust group by snum having count(*) = 1;

-- 66
select s.* from salespeople s join orders o on s.snum = o.snum group by s.snum, s.sname, s.city, s.comm having count(o.onum) > 1;

-- 67 using exists
select s.* from salespeople s where exists (select 1 from cust c where c.snum = s.snum and c.rating = 300);

-- 68 using join
select distinct s.* from salespeople s join cust c on s.snum = c.snum where c.rating = 300;

-- 69 using exists
select s.* from salespeople s where exists (select 1 from cust c where c.city = s.city and c.snum <> s.snum);

-- 70
select distinct c.* from cust c where exists (select 1 from cust c2 join orders o on c2.cnum = o.cnum where c2.snum = c.snum and c2.cnum <> c.cnum);

-- 71 using in
select s.* from salespeople s where s.city in (select c.city from cust c);

-- 71 using any
select s.* from salespeople s where s.city = any (select c.city from cust c);

-- 72 using any
select s.* from salespeople s where s.sname < any (select c.cname from cust c where c.cname is not null);

-- 72 using exists
select s.* from salespeople s where exists (select 1 from cust c where s.sname < c.cname);

-- 73
select * from cust where rating > any (select rating from cust where city = 'Rome');

-- 74
select * from orders where amt > any (select amt from orders where odate = '1994-10-06');

-- 75 using any
select * from orders where amt < any (select amt from orders o join cust c on o.cnum = c.cnum where c.city = 'San Jose');

-- 75 without any
select * from orders where amt < (select max(o.amt) from orders o join cust c on o.cnum = c.cnum where c.city = 'San Jose');

-- 76 using all
select * from cust where rating > all (select rating from cust where city = 'Paris');

-- 76 using not exists
select * from cust c where not exists (select 1 from cust p where p.city = 'Paris' and c.rating <= p.rating);

-- 77
select * from cust where rating >= any (select rating from cust where snum = (select snum from salespeople where sname = 'Serres'));

-- 78 using any
select s.* from salespeople s where not (s.city = any (select c.city from cust c));

-- 78 using all
select s.* from salespeople s where s.city <> all (select c.city from cust c);

-- 79
select * from orders where amt > any (select o.amt from orders o join cust c on o.cnum = c.cnum where c.city = 'London');

-- 80
select s.snum, s.sname, s.city, c.cnum, c.cname, c.rating from salespeople s join cust c on s.city = 'London' and c.city = 'London';

-- 81
select snum, min(odate) as lowest_order_date, max(odate) as highest_order_date from orders group by snum;

-- 82
select s.snum, s.sname, s.city, case when exists (select 1 from cust c where c.city = s.city) then 'has customers in city' else 'no customers in city' end as status from salespeople s;

-- 83
select s.snum, s.sname, s.city, case when exists (select 1 from cust c where c.city = s.city) then concat(s.sname,' matched to customer in ',s.city) else concat(s.sname,' not matched to customer in ',s.city) end as customer_match from salespeople s;

-- 84
select cname, city, rating, 'High Rating' as rating_status from cust where rating >= 200
union
select cname, city, rating, 'Low Rating' as rating_status from cust where rating < 200;

-- 85
select s.sname as name, s.snum as number from salespeople s join orders o on s.snum = o.snum group by s.snum, s.sname having count(o.onum) > 1
union
select c.cname as name, c.cnum as number from cust c join orders o on c.cnum = o.cnum group by c.cnum, c.cname having count(o.onum) > 1
order by name;

-- 86
select snum as number from salespeople where city = 'San Jose'
union
select cnum as number from cust where city = 'San Jose'
union all
select onum as number from orders where odate = '1994-10-03';

-- 87
select distinct s.* from salespeople s join cust c on s.snum = c.snum where s.city = 'London' and c.city = 'London';

-- 88
select s.* from salespeople s where s.city = 'London' and not exists (select 1 from cust c where c.snum = s.snum and c.city = 'London');

-- 89
select s.snum, s.sname, s.city, c.cnum, c.cname from salespeople s left join cust c on s.snum = c.snum
union
select s.snum, s.sname, s.city, c.cnum, c.cname from cust c right join salespeople s on s.snum = c.snum
order by sname;