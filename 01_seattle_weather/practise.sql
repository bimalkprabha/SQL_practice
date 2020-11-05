CREATE TABLE weather(
  date_weather TIMESTAMP,
  inches_rain REAL,
  temp_max REAL,
  temp_min REAL,
  did_rain BOOLEAN);

create view datas as
SELECT inches_rain,temp_max,temp_min,did_rain,
EXTRACT('year' FROM date_weather) AS "year",
EXTRACT('month' FROM date_weather) AS "month",
EXTRACT('day' FROM date_weather) AS "day" 
FROM weather 

select * from datas 
where year = 2000
and month =12 
and day between 1 and 15

select "year",avg(temp_max) as avg_high_temp
from datas
where "year" >= 2000
group by "year"
order by "year" asc

select * from weather order by temp_max desc limit 10

SELECT department_id,first_name, last_name ,job_id,department_name
FROM employees 
WHERE department_id in  
( SELECT department_id  
FROM departments 
);