show databases;
create database db1;
drop database db1;
show databases;
create database db2;
use db2;
show tables;
create table tb1 (name varchar(10), age int);
desc table tb1;
show create table tb1;
alter table tb1 add surname varchar(15);
alter table tb1 drop column age;
alter table tb1 modify column name varchar(15);
drop table tb1;
create table tb2 (
	ph_no bigint not null,
    email varchar(30) unique,
    id int primary key,
    age int,
    check (age >= 18),
    city varchar (20) default 'Mumbai'
);
show create table tb2; 




