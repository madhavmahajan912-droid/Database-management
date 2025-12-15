create database sub_query;

use joinsconcepts;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    age INT
);

INSERT INTO employees (emp_id, emp_name, dept_id, salary, age) VALUES
(1, 'John', 101, 50000, 28),
(2, 'Emma', 101, 65000, 32),
(3, 'Raj', 102, 45000, 26),
(4, 'Meera', 103, 70000, 38),
(5, 'Ravi', 102, 48000, 30),
(6, 'Naina', 103, 52000, 29),
(7, 'Alex', 101, 58000, 31);

CREATE TABLE depart (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO depart (dept_id, dept_name) VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'Finance');

#Find employees whose salary is greater than average salary.
select emp_id, emp_name, salary
from employees
where salary > (select avg(salary) from employees);

#Find employees who work in the sales department.
select * from employees
where dept_id = (select dept_id from department where dept_name = 'Sales');

#Find the hightest paid emp
SELECT salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

#find employees whose older than the youngest employees 
SELECT *
FROM employees
WHERE age > (SELECT MIN(age) FROM employees);

#list employees who earn more than john
SELECT * FROM employees
WHERE salary > (SELECT salary FROM employees WHERE emp_name = 'John');

#find employees  whose salary is second highest
SELECT emp_name,salary from employees where salary < (select max(salary) from employees order by salary desc) limit 1;

#find employees in department where the average salary is above 50000
select emp_name  
from employees
where dept_id  in (select dept_id
from employees
group by dept_id 
having avg(salary)>50000
);

#find emplloyee in the same dept as emma
select *  from employees 
where dept_id = (select dept_id from employees where emp_name  = 'emma');

#List dept that have more than 2 employees
SELECT dept_id, dept_name
FROM depart
WHERE dept_id IN (
    SELECT dept_id
    FROM employees
    WHERE dept_id IS NOT NULL
    GROUP BY dept_id
    HAVING COUNT(*) > 2
);

#Find employee who can earn more than every employees in marketing
SELECT *
FROM employees
WHERE salary > ALL (
    SELECT msx(salary) FROM employees WHERE dept_id = 102
);

select emp_name 
from employees 
where salary > (select max(salary) from employees),
where dept_id = (select dept_id from depart where dept_id name = "Marketing");


#Find employees who earn the min salary in there department 
select *
from employees 
where salary = (
    select MIN(salary)
    from employees
    where dept_id = dept_id
);

#12find employees whose salary is above the department avg
SELECT *
FROM employees 
WHERE salary > (SELECT AVG(salary)FROM employees WHERE dept_id = dept_id);


#13List employees who are younnger than emma 
select *
from employees
where age < (SELECT age FROM employees WHERE emp_name = 'Emma');


#14find emp who do not work i any deprtment present in the different table 


#15Find the top 2 highest salaries using a subquery
select a.emp_name,a.salary 
from employees a
where a.salary  in (select b.salary from employees b  order by b.salary desc limit 2) ;

SELECT salary
FROM employees e1
WHERE 2 > (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
)
ORDER BY salary DESC;


#16count the employees in the department with the highest avg salary 
select count(*) from employees where dept_id = (select dept_id from employees group by dept_id order by avg(salary) desc limit 1);



#17display emp whose salary is below department avg
select emp_id, emp_name, dept_id, salary
from employees e
where salary < (SELECT AVG(salary) from employees where dept_id = e.dept_id);



#18 find emp whose age is greater than the avg age
select emp_id, emp_name, age from employees where age > (select avg(age) from employees);


#19 find emp who belong to dept starting with 'M'


#20 find emp who do not have the same salary as anyone else