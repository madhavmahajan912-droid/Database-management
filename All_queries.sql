create database project;
use project;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    gender CHAR(1),
    city VARCHAR(30),
    joining_date DATE
);
INSERT INTO employees (emp_name, department, salary, gender, city, joining_date) VALUES
('Amit Sharma', 'IT', 55000, 'M', 'Delhi', '2020-06-12'),
('Priya Singh', 'HR', 45000, 'F', 'Mumbai', '2021-02-20'),
('Rajesh Kumar', 'Finance', 60000, 'M', 'Bangalore', '2019-08-10'),
('Neha Gupta', 'IT', 70000, 'F', 'Delhi', '2018-11-25'),
('Vikas Yadav', 'Sales', 35000, 'M', 'Pune', '2022-04-14'),
('Sonal Mehta', 'Finance', 48000, 'F', 'Chennai', '2020-09-05'),
('Karan Patel', 'IT', 30000, 'M', 'Ahmedabad', '2023-01-15'),
('Ritika Sharma', 'HR', 52000, 'F', 'Delhi', '2019-12-19'),
('Deepak Joshi', 'Sales', 40000, 'M', 'Mumbai', '2021-07-07'),
('Anjali Rao', 'Finance', 62000, 'F', 'Hyderabad', '2018-05-10');


#Q
select * from employees;
#Q2
select emp_name, salary from employees;
#Q3
select emp_name from employees where department = 'IT';
#Q4
select emp_name, salary from employees where salary > 50000;
#Q5
select * from  employees where gender = 'F';
#Q6
select * from employees where city = 'Delhi';
#Q7
select * from employees where joining_date > 2020-01-01;
#Q8
select distinct department from employees;
#Q9  
select count(*) from employees;
#Q10
select * from employees order by salary asc;
#Q11
select max(salary) from employees;
select * from employees where salary = (select max(salary)from employees);
#Q12
select avg (salary) from employees;
#Q13
select department, count(*) as count_each_deparment from employees group by department;
#Q14
select department, sum(salary) as total_salary from employees group by department;
#Q15
select * from employees where emp_name like  'A%';
#Q16
select * from employees where emp_name like '%Sh%';
#Q17
select * from employees where salary between 40000 and 60000;
#Q18
select * from employees where city in ('Delhi','Mumbai');
#Q19
select * from employees where gender = 'M' and department = 'IT'; 
#Q20
ALTER TABLE employees ADD COLUMN email VARCHAR(100);

UPDATE employees 
SET email = CONCAT(LOWER(REPLACE(emp_name, ' ', '')), '@company.com');

#Q21
select emp_name from employees order by emp_name asc;
#Q22
select * from employees where department = 'Finance';
#Q23
select * from employees where salary < 40000;
#Q24
select * from employees where gender = 'M';
#Q25
select emp_name, city, salary from employees where city = 'Mumbai';
#Q26
select sum(salary) as total_salary from employees;
#Q27
select * from employees where year (joining_date) = 2020;
#Q28
select * from employees where department in ('IT','HR');
#Q29
select distinct city from employees;
#Q30
select gender, count(*) as total from employees group by gender;
#Q31
SELECT * FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);
#Q32
select * from employees where emp_name like '%a';
#Q33
select * from employees where city not like 'delhi';
#Q34
select emp_name, joining_date from employees order by emp_name desc;
#Q35
select * from employees where year(joining_date) between 2019 and 2021;
#Q36
select department, avg(salary) as avg_salary from employees group by department;
#Q37
select * from employees where salary > (select avg(salary) from employees); 
#Q38
select * from employees where year(joining_date) < 2020;
#Q39
select city, count(*) as each_city_emp_count from employees group by city;
#Q40
select * from employees order by salary desc limit 3;
#Q41
select * from employees order by salary asc limit 2;
#Q42
select upper(emp_name) as upper_case from employees;
#Q43
select lower(emp_name) as lower_case_name from employees;
#Q44
select department, count(*) as nummber_of_emp from employees group by department having count(*) > 2;
#Q45
select department, sum(salary) as department_salary from employees group by department having sum(salary) > 100000;
#Q46
select * from employees where length(city) = 5;
#Q47
select year(joining_date) as year, count(*) as total from employees group by year(joining_date);
 #Q48
 select * from employees where salary not between 40000 and 60000;
 #Q49
 select emp_name,salary, sum(salary * 0.10) as bonus_salary from employees group by emp_name,salary; 
 #Q50
 select emp_name, left(emp_name, 5) from employees;
 #Q51
 select distinct department from employees order by department asc;
 #Q52
select * from employees where emp_name like '% %';
#Q53
select salary, count(*) from employees group by salary having count(*) > 1;
#Q54
select month(joining_date) as month, count(*) as total from employees group by month(joining_date);
#Q55
SELECT department, AVG(salary) AS avg_salary  FROM employees  GROUP BY department ORDER BY avg_salary DESC LIMIT 1;
#Q56
alter table employees change emp_name name varchar(60);
#Q57
alter table employees modify salary int;
#Q58
delete from employees where salary < 35000;
#Q59
update employees set salary = salary * 1.5 where department = 'IT'; 
#Q60
select count(*) as total_emp, avg(salary) as salary_total from employees;
#Q61
select * from employees where dayname(joining_date) = 'Monday';
#Q62
select * from employees where length(department) > 5;
#Q63
select name, year(joining_date) as date_i from employees;
#Q64
SELECT emp_name, MONTHNAME(joining_date) AS month_joined FROM employees;
#Q65
select department, salary, count(*) from employees group by department, salary having count(*) > 1;




