create database db;
use db;
Show databases;

drop database db;
drop database if exists db;

create database db;
use db;
-- create the table
create table tb1(id int, emp_name varchar(50), age int not null);
-- inset the table
insert into tb1 values(1,'Sanskruti B',23);
insert into tb1 values(2,'Shri V',22),(3,'Garima',25);
select * from tb1;

-- drop table tb1

create table persons(person_id int, f_name varchar(20), l_name varchar(20), address varchar(100), city varchar(20));
insert into persons values (1, 'Smith','John','123 Main St','Springfield'),
(2, 'Doe', 'Jane', '456 Oak St', 'Greenfield'),
(3, 'Brown', 'Charlie', '789 Pine St','Mapleton');

select f_name,l_name from persons;

-- Primary key , Foreign key
create table personal_info(cust_id int not null, name varchar(20) not null, country varchar(20) not null,city varchar(20), Primary key (cust_id));
describe personal_info;

create table order_info(order_id int primary key ,ord_num int not null,cust_id int,foreign key(cust_id) references personal_info(cust_id));

create table tbl6(rollno int primary key,name varchar(20),age int default 25);

insert into tbl6(rollno,name) values(1,"a"),(2,"b");
select * from tbl6;

create table stu2(id int primary key,city varchar(40),age int,constraint cs2 check (age>18 and city ="pune"));

insert into stu2 values (1,"pune",12);
select * from stu2;

create table tbl3(rollno int primary key,name varchar(20),age int not null);

create table tbl5(rollno int primary key,name varchar(20),age int unique); #unique value
create database classicmodels;
drop database classicmodels;
use classicmodels;
show tables;
-- alter thre table 
# alter table : it is used to add,delete,modify columns in sn existing table
alter table employees change employeenumber  emp_no int;
select * from employees;
-- alter table table_name ADD column_name datatype; #add new col
select * from payments;


