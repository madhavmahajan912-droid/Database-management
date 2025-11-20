SELECT * FROM class.book4;
select name, salary,
case when salary>70000 then"High"
when salary between 40000 and 70000 then "medium" 
else "low" 
end as salary_level 
from book4;

select name, experience,
CASE
when experience>=8 then 10000
when experience>=5 then 7000
else 3000
end  bonus 
from book4;

SELECT name, 
    CASE 
        WHEN 'Male' THEN CONCAT('Mr. ', name)
        WHEN 'Female' THEN CONCAT('Mrs. ', name)
    END AS full_name
from book4;

SELECT 
    name,
    experience,
    salary,
    CASE
        WHEN experience > 8 AND salary > 60000 THEN 'A'
        WHEN experience BETWEEN 5 AND 7 THEN 'B'
        ELSE 'C'
    END AS grade
FROM book4;

SELECT 
    name,
    department,
    CASE
        WHEN department = 'IT' THEN 'D01'
        WHEN department = 'Finance' THEN 'D02'
        WHEN department = 'HR' THEN 'D03'
    END AS department_code
FROM book4;

SELECT 
	name,
    salary,
    CASE 
	    WHEN salary < 40000 then salary * 1.20
        WHEN salary between 40000 and 60000 then salary * 1.10
        ELSE salary * 1.05
	end as increment_salary
from book4;

SELECT 
	name,
    department,
    CASE 
        WHEN department IN ('IT', 'Finance') THEN 'Technical'
        ELSE 'Non-Technical'
    END AS department_type
FROM book4;


select
     name,
     salary,
     case
     when salary > (select avg (salary) from book4) then 'above avg'
     else 'below avg'
     end as new_salary
     from book4;
     

