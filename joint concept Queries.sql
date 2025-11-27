create table  employees(
emp_id int primary key,
emp_name varchar(50),
dept_id int,
salary int
);
insert into employees (emp_id, emp_name, dept_id, salary) values
(1, 'John', 101, 50000),
(2, 'Emma', 101, 65000),
(3, 'Raj', 102, 45000),
(4, 'Meera', 103, 70000),
(5, 'Ravi', 102, 48000),
(6, 'Naina', 103, 52000),
(7, 'Alex', 101, 58000);

create table department(
dept_id int primary key,
dept_name varchar(50) 
);
INSERT INTO department (dept_id, dept_name) VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'Finance'),
(104, 'HR');


#Q1 Display employee names with their department name. based on this tables joins
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id;


#Q2 List all employees including those with no matching department.
SELECT e.emp_id, e.emp_name, e.dept_id, d.dept_name
FROM employees e
LEFT JOIN department d
ON e.dept_id = d.dept_id;

#Q3 List all departments even if there are no employees.
SELECT d.dept_id, d.dept_name, e.emp_name
FROM employees e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;

#4 Show employees from the Sales department.
SELECT e.emp_id, e.emp_name, e.salary
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Sales';

#Q5 Find the top 3 highest paid employees.
SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
ORDER BY e.salary DESC
LIMIT 3;

#Q6 Find employees earning more than 50,000 from Marketing.
SELECT e.emp_id, e.emp_name, e.salary
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Marketing'
AND e.salary > 50000;

#Q7 Count employees in each department.
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

#Q8 Show departments having more than 2 employees.
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.emp_id) > 2;

#Q9 Show highest salary in each department.
SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

#Q10 Show employees whose salary is above department average.
SELECT e.emp_id, e.emp_name, e.dept_id, e.salary
FROM employees e
WHERE e.salary >
      (SELECT AVG(e2.salary)
       FROM employees e2
       WHERE e2.dept_id = e.dept_id);
	
#Q11 Show employees and their departments sorted by department name.
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
ORDER BY d.dept_name ASC;


#Q12 List the 2 lowest-paid employees with department names.
SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
ORDER BY e.salary ASC
LIMIT 2;

#Q13Show total salary expenditure per department.
SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

#Q14Show departments where the total salary spent is more than 150,000.
SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING SUM(e.salary) > 150000;

#Q15 Show employees who belong to departments starting with 'S'.
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_name LIKE 'S%';

#Q16Find employees whose salary is the highest in their department.
SELECT e.emp_id, e.emp_name, e.dept_id, e.salary
FROM employees e
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.dept_id = e.dept_id);
    
#Q17Show employees and departments sorted by salary descending.
SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

#Q18Count how many employees earn above 50,000 per department.
SELECT d.dept_name,
       COUNT(e.emp_id) AS employees_above_50k
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
AND e.salary > 50000
GROUP BY d.dept_id, d.dept_name;

#Q19Show employee name, department, and salary for employees between 45,000 and 60,000.
SELECT e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN department d
ON e.dept_id = d.dept_id
WHERE e.salary BETWEEN 45000 AND 60000;

#Q20  Find departments with no employees.
SELECT d.dept_id, d.dept_name
FROM department d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;