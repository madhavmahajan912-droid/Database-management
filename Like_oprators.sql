create database class;
use class;

##Like oprators

select * from book1 where city = 'delhi';
select * from book1 where marks > 80 and city = 'delhi';
select * from book1 where city not in ('mumbai');
select * from book1 where city in ('delhi' , 'kolkata'); 
select * from book1 where city not in ('delhi' , 'kolkata');

select * from book1 where marks >= 70 and marks <= 90;
select * from book1 where age < 20 or age > 22;
select * from book1 where name like 's%';
select * from book1 where name like '%a';
select * from book1 where name like '%an%';

select * from book1 where char_length(name) = 5; 
select * from book1 where name like "a%" or name like "p%";
select * from book1 where name like '%r';
select * from book1 where name like '%na%';
select * from book1 where name like '%ee%' or name like '%ss%';
 
 
