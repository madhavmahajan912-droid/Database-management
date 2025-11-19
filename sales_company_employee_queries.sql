create database sales_company;
use sales_company;

select department, avg(salary) as avg_salary from Employees group by department;

select count(*) as total_employees from Employees where hire_date > '31-12-2019';

select department, SUM(salary) AS total_salary FROM employees GROUP BY department ORDER BY total_salary DESC;

select MAX(salary) AS highest_salary FROM employees WHERE department = 'Finance';

select * FROM employees ORDER BY salary DESC LIMIT 3;

select department, AVG(salary) AS avg_salary FROM employees GROUP BY department ORDER BY avg_salary ASC LIMIT 1;

select department, COUNT(*) AS total_employees FROM employees GROUP BY department ORDER BY total_employees DESC;

select AVG(salary) AS avg_salary FROM employees WHERE hire_date < '2020-01-01';

select first_name, last_name, hire_date FROM employees WHERE department = 'IT' ORDER BY hire_date DESC;

select first_name, last_name, salary FROM employees WHERE hire_date > '2019-01-01' ORDER BY salary DESC;

select * FROM employees WHERE department = 'HR' ORDER BY salary ASC LIMIT 1;

select department, SUM(salary) AS total_salary FROM employees GROUP BY department ORDER BY total_salary DESC LIMIT 2;

select * FROM employees WHERE hire_date > '2018-12-31' ORDER BY salary DESC LIMIT 4;

select * FROM employees WHERE department = 'IT'ORDER BY salary DESC LIMIT 1;

SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department HAVING AVG(salary) > 60000;
