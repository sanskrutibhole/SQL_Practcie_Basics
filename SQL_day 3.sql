use db
CREATE TABLE customers (
    customer_id INT  PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE orders (
    order_id INT  PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_id,first_name, last_name, email, phone, address) VALUES
(1,'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Maple Street'),
(2,'Jane', 'Smith', 'jane.smith@example.com', '098-765-4321', '456 Oak Avenue'),
(3,'Robert', 'Johnson', 'robert.johnson@example.com', '555-555-5555', '789 Pine Road'),
(5,	'Rob','John','robert.jonson@example.com','555-555-555','79 syd Road'),
(6,'Rt', 'son', 'rert.johnson@exmple.com', '8-555-5555', '789 Pine Road');

;

INSERT INTO orders (order_id,customer_id, order_date, amount, status) 
VALUES(1,1, '2024-07-20', 150.00, 'Shipped'),
(2,2, '2024-07-21', 200.00, 'Pending'),
(3,3, '2024-07-22', 350.00, 'Delivered'),
(4,1, '2024-07-23', 250.00, 'Cancelled'),
(5,6, '2024-07-23', 250.00, 'Cancelled');

select * from customers;
select * from orders;

use classicmodels;

select * from employees where firstname like '/%A%';

#Aggregate function : count, min, max, avg, distinct, sum
select * from customers;
select Count(customerNumber) as total_customer from customers;

select country, count(customerNumber) as total_customer 
from customers
where country ='USA';

select * from new_payments;
select min(amount) as min_amount from new_payments;

select * from employee;

select * from employee where PrevExperience > 2;

-- GROUP BY
-- The GROUP BY clause in SQL is used to group rows that have the same values into summary rows.
-- It is often used in conjunction with aggregate functions (like COUNT(), SUM(), AVG(), etc.) 
-- to perform calculations on each group separately.
-- COUNT(*) is generally faster than COUNT (column_name) because it doesn't need to check for NULL 
-- orderby can be done by column index (not suggested)

select PrevExperience, count(*) from employee group by PrevExperience order by PrevExperience;

select PrevExperience, avg(salary) from employee group by PrevExperience order by avg(salary);

select * from orders;
select  status, count(customer_id) from orders group by status;

use classicmodels;
select * from employees;
select jobTitle, count(emp_no) from employees group by jobTitle;

use db;
select * from employee;
select PrevExperience, avg(salary) from employee 
Where PrevExperience > 3
group by PrevExperience order by avg(salary);

use classicmodels;
select * from new_payments;

select customerNumber, count(*) as total_orders, sum(amount) from new_payments 
where paymentDate between '2003-06-05' and '2004-10-19' 
group by customerNumber
Order by customerNumber;


-- When we need apply condition on aggregate fuction then we need to use having 
select * from orderdetails;
select orderNumber, sum(priceEach*quantityOrdered) as total from orderdetails
group by orderNumber
Having sum(priceEach*quantityOrdered)  > 5000;

-- syntax
/*select columnname
from tablename
where condition
group by col
having conditions
order by col*/

select * from orderdetails;

select productCode, sum(quantityOrdered * priceEach) as ordervalue from orderdetails
where productCode like 's18%'
group by productCode
having ordervalue>5000
order by ordervalue desc;

select * from customers;
select country, count(customerNumber) from customers
group by country
having count(customerNumber) > 5;

﻿

-- where and having difference :
-- where used to filter records from the table based on condition 
-- having: filter records from the groups
-- where: row wise implemenatation but having does columnwise opeartions


select now();
select date(now()); 
select curdate();
select date_format(curdate(), '%D/%M/%Y');

