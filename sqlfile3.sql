select * from student;
select id,name,age,
	case 
		when age<0 then 'Invalid Age'
        when age<=18 then 'Cannnot drive'
        else 'Adults cann drive'
	end as driving
from student;
insert into student (name, age) values ('klm',0), ('lmn',-2);
create table table1 (
	tb1_id int,
    a int
);
create table table2 (
	tb2_id int,
    a int
);
show tables;
insert into table1 values (100,1),(200,2);
insert into table2 values (1000,1),(3000,3);
select * from table1;
select * from table2;
select * from table1 inner join table2 on table1.a=table2.a;
select * from table1 right join table2 on table1.a=table2.a;
select * from table1 left join table2 on table1.a=table2.a;
select * from table1 cross join table2;
select * from table1 left join table2 on table1.a=table2.a
union
select * from table1 right join table2 on table1.a=table2.a;
select a,tb1_id from table1
union all
select a,tb2_id from table2;
select * from student;
start transaction;
insert into student(name,age) values ('zyx',50);
insert into student(name,age) values ('yxw',55);
rollback;




















