use db3;
select * from student;
select name,age from student;
select name,age from student where age >=18;
select name,age from student where age <=18;
select name,age from student where name = 'bcd';
select name,age from student where age between 17 and 20;
select name,age from student where age = 17 or age = 22;
select name,age from student where not age = 17 and not age = 22;
select name,age from student where not age = 17 and not age = 22;
select name,age from student where not age = 17 or not age = 22;
select name,age from student where age in (17,22,20);
select name,age from student where name like 'b%';
select name,age from student where name like '_b%';
select name,age from student where name like '___';
select name,age from student where name like '%e';
select name,age from student where name like 'b%';
select name,age from student limit 2;
select min(age) from student;
select max(age) from student;
select min(age) as Youngest from student;
select max(age) as Oldest from student;
select count(*) as minors from student where age < 18;
select count(*) as adults from student where age >= 18;
select avg(age) as average_age from student;
select sum(age) as total from student;
create table dept (
	id int primary key,
    name varchar(20) unique,
    loc varchar(20) not null
);
show tables;
insert into dept values (1,'a','mumbai'),(2,'b','bangalore'),
						(3,'c','mumbai'),(4,'d','bangalore'),(5,'e','mumbai');
select * from dept;
select count(*) from dept group by loc;
select count(*) as number, loc from dept group by loc;
select loc, count(*) from dept group by loc having loc='mumbai';
select name,loc from dept order by name;
select id,name,loc from dept order by name;
select id,name,loc from dept order by name desc;
 -- asc : ascending and desc : descending
 



















