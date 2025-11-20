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


##string function;
select id, upper(name), percentage from personal;
select id, ucase(name), percentage from personal;
select id, lower(name), percentage from personal;
select id, lcase(name), percentage from personal;

select id, character_length(name), percentage from personal;
select id, char_length(name), percentage from personal;
select id, length(name), percentage from personal;

select id, concat(name,percentage), percentage from personal;
select id, concat(name," ",percentage), percentage from personal;
select id, concat(name,"-",percentage), percentage from personal;
select concat("madhav");
select concat_ws("  ","madhav","hello","class");
select trim(  "madhav"     );
select ltrim(  "madhav"     );
select rtrim(  "madhav"     );


select position("hello" in "hello world");
select position("o" in "hello world");
select instr("helloworld","ell");
select locate("l","helloworld",7);
select locate("l","helloworld",10);

select substring("madhav",5);
select substring("madhav",3,6);
select substring("madhava",-6,3);
select substr("madhav",-6,3);
select mid("madhav",-6,3);

select substring_index("www.madhav.net",".",1);
select substring_index("www.madhahv.net",".",2);
select substring_index("www.madhahv.net","e",2);

select strcmp("madhav mahajan","MADAHV  mahajan");
select strcmp("madhav","madahv");
select strcmp("madah","madahv");

select format(235.3568,3);

select left("madhav",3);
select left("maadhav",5);
select right("madhav",3);

select rpad("madhav",20,"-");
select rpad("madhav",20,"*");
select lpad("madhav",20,"*");


select reverse("madhav");
select replace("Madhav", "mahajan", "Mr.");

select field("a","A","a","k");
select field("a","X","A","k");
select field(5,0,1,2,3,4,5);
select field("b","A","a","b");
select field("ram","RAM","Mohan","Shyam");
select find_in_set("ram","RAM,Mohan,Shyam");