create table personal(
id int not null unique,
name varchar(20) not null,
percentage int not null,
age int not null check(age>=18),
gender varchar(6) not null,
phone varchar(10) not null unique,
city varchar(15) not null default 'Delhi');
insert into personal (id, name, percentage, age, gender, phone, city)
values
(1, "Ram Kumar", 45, 19, "M", 4022155, "Agra"), 
(2, "Sarita Kumari", 55, 21,"F",4034421, "Delhi"), 
(3, "Salman Khan", 62, 20, "M",4056221, "Agra"), 
(4, "Juhi Chawla", 47, 18, "F",4089821, "Bhopal"), 
(5, "Anil Kapoor", 74, 22, "M",4025221, "Agra"), 
(6, "John Abraham", 64, 21, "M",4033776, "Delhi"),
(7, "Shahdi kapoor", 52, 20, "M", 4022784, "Agra");

## ORDER BY

Select * from personal order by name;

Select * from personal order by name asc;

Select * from personal order by name desc;

Select * from personal order by age;

Select * from personal order by city;

Select * from personal order by name, city;

Select * from personal where city="Agra" order by name desc;

	