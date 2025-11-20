create database sher;
use sher;


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


## Arithmetic functions

Select 5+6;
Select 5-6;
Select 5*6;
Select 5/3; 

Select id, name,(percentage+5) as new_percentage from personal; 

Select pi();

Select round(4.51);--->5
Select round(4.49);--->4
Select round(-4.49);--->-4

Select round(1234.987,2);---->1234.99

Select round(1234.987,1);--->1235

Select ceil(1.23);--->2

Select floor(4.56);--->4

Select pow(2,2);
Select pow(2,3);
Select pow(2,4);

Select sqrt(16);
Select sqrt(4);
Select sqrt(5);--->2.2306.......

Select round(sqrt(5),2);

Select rand();---(0,1)

Select rand()*100;---->(0-100)

Select abs(-56);--->56
Select abs(-56.25);--->56.25
Select abs(56.25);--->

Select sign(23);
Select sign(0);
Select sign(-23);


