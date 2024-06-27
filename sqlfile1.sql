show databases;
create database db3;
show tables;
use db3;
create table student (
	id int primary key auto_increment,
    name varchar(20) not null,
    age int not null
);
show tables;
insert into student (name, age) values ('abc',17);
select * from student;
insert into student (name, age) values ('bcd',18), ('cde',18);
insert into student (name, age) values (null,17);
insert into student (name, age) values ('def',22);
update student set age=19 where id=2;
insert into student (name, age) values ('ghi',24);
delete from student where id = 5;
insert into student (name, age) values ('jkl',20);
show tables;
