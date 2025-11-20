SELECT * FROM university.student2;

##time fuction
select current_time();
select localtime();
select localtimestamp();
select time('2025-10-14 10:09:21');
select minute('2025-10-14 10:09:21');
select second('2025-10-14 10:09:21');
select hour('2025-10-14 10:09:21');
select timediff("2025-10-14 10:09:21");


select extract(month from "2025-10-14 10:09:21");
select extract(year from "2025-10-14 10:09:21");
select extract(day from "2025-10-14 10:09:21");
select extract(hour from "2025-10-14 10:09:21");
select extract(minute from "2025-10-14 10:09:21");
select extract(second from "2025-10-14 10:09:21");

select adddate("2025-10-14", interval 10 day);
select adddate("2025-10-14", interval 1 month);
select adddate("2025-10-14", interval 1 year);
select date_add("2025-10-14", interval 500 minute);
