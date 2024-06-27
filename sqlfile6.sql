-- Partitioning
show tables;
create table range_partitiong(
	bill_no int not null,
    cust_code int not null,
    amount int not null
)
partition by range (amount)
(
	partition p0 values less than (100),
    show databases;
create database practice;
use practice;
create table employee (
	emp_id int primary key,
    emp_code int,
    cep_name varchar(30) not null,
    dep_id int,
    phonne_no varchar(20) not null
);
show tables;
insert into employee values (1,101,'Mark',1001,'9876543210'),
							(2,102,'Joseph',1002,'9876543210'),
                            (3,103,'John',1003,'9876543210'),
                            (4,104,'Adam',1004,'9876543210'),
                            (5,105,'Alex',1005,'9876543210');
select count(*) from employee;
call employee_count();
call practice.employee_count();

select * from employee where emp_code=102;
call practice.employee_with_code(101);
call practice.employee_with_code(104);

set @maxempcode = 0;
call practice.get_max_code(@maxempcode);
select @maxwempcode;

set @x = 2;
call pratice.get_dep_code_from_id(@x);
select @x;

call practice.insert_employee(6,106,'Macie',1006,'9875684250');
select  * from employee;

select add_two_num(3,6) as sum;
create table table_funtiom(
id int,
name varchar(100)
);
show tables;
insert into table_funtiom values (100,'Mike'),
									(100,'Sam'),
                                    (102,'Adam'),
                                    (103,'Carrol');
select * from table_funtiom;
call getResultSet(100);
)