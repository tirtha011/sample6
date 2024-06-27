-- partitioning
show tables;
create table range_partitioning(
	bill_no int not null,
    cust_code int not null,
    amount int not null
)
partition by range  (amount)
(
	partition p0 values less than (100),
    partition p1 values less than (500),
    partition p2 values less than (1000),
    partition p3 values less than (1500)
);
desc table range_partitioning;
insert into range_partitioning values (1,101,25),
												(2,102,125),
                                                (3,102,425),
                                                (4,102,925),
                                                (5,102,1125),
                                                (6,102,1425);
select * from range_partitioning where amount = 925;
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_Name = 'range_partitioning';


create table list_partitioning(
	bill_no int not null,
    agent_code int not null,
    review int not null
)
partition by list (review)
(
	partition pA values in (1,2,3,4),
    partition pB values in (5,0),
    partition pC values in (7,8,9)
);
desc table list_partitioning;
insert into list_partitioning values (1,101,1),
										(2,102,3),
										(3,102,5),
										(4,102,6),
										(5,102,8),
										(6,102,9);
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_Name = 'list_partitioning';


create table hash_partitioning(
	id int not null,
    dep int not null,
    amount int not null
)
partition by hash (id) partitions 3;
insert into hash_partitioning values (1,101,25),
										(2,102,1225),
                                        (3,102,425),
                                        (4,102,925),
                                        (5,102,1125),
                                        (6,102,1425);
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_Name = 'hash_partitioning';


create table key_partitioning(
	id int primary key,
    dep int not null,
    amount int not null
)
partition by key() partitions 2;
insert into key_partitioning values (1,101,25),
										(2,102,125),
                                        (3,102,425),
                                        (4,102,925),
                                        (5,102,1125),
                                        (6,102,1425);
select * from key_partitioning;
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_Name = 'key_partitioning';

								

create table sub_partitioning(
	id int not null,
	dep int not null,
	amount int not null  
)
partition by range(amount) 
subpartition by hash(id)
subpartitions 4
(
	partition p0 values less than (500),
    partition p1 values less than (maxvalue)
);
insert into sub_partitioning values (1,101,25),
									(2,102,125),
									(3,102,425),
									(4,102,925),
									(5,102,1125),
									(6,102,1425);	
select Partition_Name, Table_Rows from Information_Schema.Partitions where Table_Name = 'sub_partitioning';

	