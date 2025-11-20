-- Student Name: daniel saidov
-- Class: golan
-- ID: 213126527


-- Question 1
-- SQL:
SELECT COUNT(*)
FROM imdb_top_1000 as i
WHERE IMDB_Rating >8
-- Answer:    322


-- Question 2
-- SQL:
SELECT i.IMDB_Rating
FROM imdb_top_1000 as i
ORDER BY i.IMDB_Rating DESC LIMIT 1

-- Answer:    9.3


-- Question 3
-- SQL:
SELECT COUNT(*) as num
FROM imdb_top_1000 as i
WHERE i.Genre LIKE 'Drama'

-- Answer:    289


-- Question 4
-- SQL:
SELECT COUNT(*) as num
FROM imdb_top_1000 as i
WHERE i.Genre LIKE 'Drama'

-- Answer:    172



-- Question 5
-- SQL:
SELECT COUNT(*) as num
FROM imdb_top_1000 as i
WHERE i.Released_Year LIKE '2010'

-- Answer:    23


-- Question 6 
-- SQL:
SELECT MIN(i.Runtime)
FROM imdb_top_1000 as i

-- Answer:    45


-- Question 7
-- SQL:
SELECT COUNT(*) as num
FROM imdb_top_1000 as i
WHERE i.Meta_score >85

-- Answer:    249


-- Question 8
-- SQL:
SELECT COUNT(*) as num
FROM imdb_top_1000 as i
WHERE i.Gross >100000000

-- Answer:    186


-- Question 9
-- SQL:
SELECT AVG(i.IMDB_Rating) as avg_imdb
FROM imdb_top_1000 as i

-- Answer:    7.94.....



-- Question 10
-- SQL:
SELECT COUNT(*)
FROM imdb_top_1000 as i
WHERE i.Certificate LIKE 'R'

-- Answer:    146


-- Question 11
-- SQL:
SELECT i.Genre 
FROM imdb_top_1000 as i
GROUP BY i.Genre
ORDER BY COUNT(*) DESC LIMIT 1

-- Answer:   Drama



-- Question 12
-- SQL:
SELECT COUNT(i.Genre) 
FROM imdb_top_1000 as i
WHERE (i.Genre LIKE 'Adventure') AND (i.Released_Year LIKE '2010') AND (i.IMDB_Rating NOT LIKE 'PG')

-- Answer:   1

-- Question 13
-- SQL:
SELECT COUNT(i.Genre) 
FROM imdb_top_1000 as i
WHERE  i.Runtime >=95 AND i.Runtime <=140

-- Answer:   669




-- Question 14
-- SQL:
SELECT i.Released_Year 
FROM imdb_top_1000 as i
WHERE  i.Released_Year >  '1940'
GROUP BY i.Released_Year
ORDER BY COUNT(*) LIMIT 1

-- Answer:  1943




-- Question 15
-- SQL:
 SELECT MAX(i.Gross)
FROM imdb_top_1000 as i
WHERE  i.Genre LIKE 'Comedy'

-- Answer:  9600000


-- Question 16
-- SQL:
SELECT COUNT(*)
FROM imdb_top_1000 as i
WHERE  i.IMDB_Rating >=7.3 and i.IMDB_Rating<=8.1 

-- Answer: 805



-- Question 17
-- SQL:
 SELECT AVG(i.Meta_score)
FROM imdb_top_1000 as i
WHERE  i.Genre LIKE 'Thriller' 
-- Answer: 81


-- Question 18
-- SQL:
SELECT COUNT(i.Released_Year) as num
FROM imdb_top_1000 as i
WHERE  i.Released_Year < '1980'
-- Answer: 275


-- Question 19
-- SQL:
SELECT  avg(i.IMDB_Rating) as min_avg_num,i.Genre
FROM imdb_top_1000 as i
GROUP BY i.Genre
ORDER BY min_avg_num LIMIT 1

-- Answer: Thriller



-- Question 19
-- SQL:
SELECT  avg(i.IMDB_Rating) as min_avg_num,i.Genre
FROM imdb_top_1000 as i
GROUP BY i.Genre
ORDER BY min_avg_num LIMIT 1

-- Answer: Thriller

-- Question 20
-- SQL:
SELECT  max(i.Runtime)
FROM imdb_top_1000 as i
WHERE i.Genre LIKE 'Horror'
-- Answer: 122



-- Question 21
-- SQL:
SELECT COUNT(*)
FROM disasters as d
WHERE YEAR(d.date) =2020
-- Answer: 1465



-- Question 22
-- SQL:
SELECT d.casualties
FROM disasters as d
ORDER BY d.casualties DESC LIMIT 1
-- Answer: 445

-- Question 23
-- SQL:
SELECT COUNT(*)
FROM disasters as d
WHERE d.disaster_type LIKE 'Flood'

-- Answer: 996


-- Question 24
-- SQL:
SELECT COUNT(*)
FROM disasters as d
WHERE (d.disaster_type LIKE 'Earthquake') AND (d.country LIKE 'Brazil' or d.country LIKE 'India')

-- Answer: 99



-- Question 25
-- SQL:
SELECT AVG(d.casualties)
FROM disasters as d
WHERE (d.disaster_type LIKE 'Wildfire')  OR (d.disaster_type LIKE 'Hurricane') and (d.response_time_hours <10)
-- Answer: 110.2....


-- Question 26
-- SQL:
 SELECT COUNT(d.casualties)
FROM disasters as d
WHERE d.casualties =0
-- Answer: 27


-- Question 27
-- SQL:
SELECT MIN(d.economic_loss_usd)
FROM disasters as d
-- Answer: 876.16


-- Question 28
-- SQL:
SELECT COUNT(*)
FROM disasters as d
WHERE d.economic_loss_usd >1000000000
-- Answer: 0

-- Question 29
-- SQL:
SELECT year(d.date)  
FROM disasters as d
GROUP BY year(d.date)
ORDER BY COUNT(*) DESC LIMIT 1
-- Answer: 2023

-- Question 30
-- SQL:
SELECT year(d.date)  
FROM disasters as d
WHERE d.severity_index >4 AND d.aid_amount_usd >50000
ORDER BY year(d.date) LIMIT 1 

-- Answer: 2018

-- Question 31
-- SQL:
SELECT d.disaster_type  
FROM disasters as d
GROUP BY d.disaster_type
ORDER BY COUNT(*) DESC LIMIT 1

-- Answer: Landslide

-- Question 32
-- SQL:
SELECT  COUNT(*)
FROM disasters as d
WHERE d.disaster_type LIKE '%Storm%'

-- Answer: 1005

-- Question 33
-- SQL:
SELECT  COUNT(*)
FROM disasters as d
WHERE d.casualties >=50 AND d.casualties<=500
-- Answer: 7701

-- Question 34
-- SQL:
SELECT    YEAR(d.date)
FROM disasters as d
GROUP BY YEAR(d.date)
ORDER BY  COUNT(*) LIMIT 1
-- Answer: 2019

 
-- Question 35
-- SQL:
SELECT   max(d.economic_loss_usd)
FROM disasters as d
WHERE d.disaster_type LIKE 'Flood'
-- Answer: 21803567.75


-- Question 36
-- SQL:
SELECT   COUNT(*)
FROM disasters as d
WHERE (year(d.date)>=2010 AND year(d.date)<=2024) AND d.severity_index>5
-- Answer: 5110

 
-- Question 37
-- SQL:
SELECT    AVG(casualties)
FROM disasters as d
WHERE (d.disaster_type LIKE 'Earthquake') and (d.recovery_days >40 or (d.response_time_hours>=5 AND d.response_time_hours<=15))
-- Answer: 111.5781



-- Question 38
-- SQL:
SELECT max(economic_loss_usd)
FROM disasters group by severity_index 
ORDER BY severity_index DESC LIMIT 1  ;

-- Answer: 24442640.70


-- Question 39
-- SQL:
SELECT  d.disaster_type
FROM disasters d
GROUP BY  (d.recovery_days+(d.response_time_hours)/24) 
ORDER BY (d.recovery_days+(d.response_time_hours)/24) DESC LIMIT 1
-- Answer: Landslide


-- Question 40
-- SQL:
 SELECT  *
FROM (SELECT year(d.date) as g,max(d.aid_amount_usd+d.economic_loss_usd) as dolar FROM disasters d GROUP BY year(d.date))as f
ORDER BY  f.g desc  LIMIT 1
-- Answer: 21165028.15




-- Research Section  
-- SQL:
CREATE TABLE imdb_yearly AS
SELECT
Released_Year AS year_value,
SUM(
CASE
WHEN Genre LIKE '%Action%'
AND Genre NOT LIKE '%Comedy%'
THEN 1 ELSE 0
END
) AS action_count,
SUM(
CASE
WHEN Genre LIKE '%Comedy%'
AND Genre NOT LIKE '%Action%'
THEN 1 ELSE 0
END
) AS comedy_count
FROM imdb_top_1000
GROUP BY Released_Year;
-- Answer: יצר טבלה


-- Research Section 
-- SQL:
ALTER TABLE disasters 
ADD COLUMN year_value YEAR;
UPDATE disasters SET year_value = year(date);
-- Answer: 




CREATE TABLE Summary_of_disasters AS 
SELECT d.year_value as value_year ,COUNT(*) as disaster_count 
FROM disasters d 
GROUP BY d.year_value;



SELECT i.action_count,s.disaster_count
FROM imdb_yearly as i JOIN summary_of_disasters as s 
	on i.year_value = s.value_year 
GROUP by i.year_value;