create database company;
use company;

create table employees(
id int primary key auto_increment,
name varchar(100),
position varchar(100),
salary decimal(10,2),
date_of_joining date
);
INSERT INTO employees (name, position, salary, date_of_joining)
VALUES
('John Doe', 'Manager', 55000.00, '2020-01-15'),
('Jane Smith', 'Developer', 48000.00, '2019-07-10'),
('Alice Johnson', 'Designer', 45000.00, '2021-03-22'),
('Bob Brown', 'Developer', 50000.00, '2018-11-01');
select * from employees where position = 'Developer';
update employees set salary = 46000 where id = 3;
select * from employees where id = 3; 

select * from employees where id = 4; 
delete from employees where id = 4;

select * from employees where salary > 48000;

alter table employees add email varchar(20);
select * from employees;

select * from employees;
update employees set email = 'john.doe@company.com' where id = 1;

select name, salary from employees;

select count(name) from employees where date_of_joining > 2020-01-01;

select * from employees order by salary desc;

alter table employees drop email;
select * from employees;

select max(salary) from employees;