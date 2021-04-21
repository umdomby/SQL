-- CREATE TABLE employee(
--     id BIGSERIAL NOT NULL PRIMARY KEY,
--     first_name VARCHAR (50),
--     last_name VARCHAR (50),
--     gender VARCHAR (6),
--     email VARCHAR (150),
--     data_of_birth DATE
-- )

-- DROP TABLE employee;

-- INSERT INTO employee(first_name, last_name, gender, email, data_of_birth)
-- VALUES ('Jhon','Doe','MALE', 'a@a.ru','2000-01-01');

--Console
-- SELECT * FROM employee;
-- SELECT FROM employee;
-- SELECT first_name FROM employee;
-- SELECT first_name, last_name FROM employee;

--sort
SELECT * FROM employee ORDER BY country_of_birth;
SELECT * FROM employee ORDER BY country_of_birth DESC;
--sort one country
SELECT DISTINCT country_of_birth FROM employee ORDER BY country_of_birth;
SELECT * FROM employee WHERE gender='Female';
SELECT * FROM employee WHERE gender='Female' AND country_of_birth='Argentina';
SELECT * FROM employee WHERE gender='Female' AND (country_of_birth='Argentina' OR country_of_birth='China') ORDER BY country_of_birth;
SELECT * FROM employee WHERE gender='Female' AND (country_of_birth='Argentina' OR country_of_birth='China' OR country_of_birth='Italy') ORDER BY country_of_birth='Italy' DESC ;
SELECT * FROM employee WHERE gender='Female' LIMIT 20;
SELECT * FROM employee WHERE gender='Female' OFFSET 100 LIMIT 20;
SELECT * FROM employee WHERE gender='Female' OFFSET 20 FETCH FIRST 5 ROW ONLY;

SELECT * FROM employee WHERE country_of_birth IN ('China','Argentina') ORDER BY country_of_birth;
SELECT * FROM employee WHERE date_of_birth BETWEEN '2020-01-01' AND '2020-05-05' ORDER BY date_of_birth;

SELECT * FROM employee WHERE email LIKE '%google.com';
SELECT * FROM employee WHERE email LIKE '%google%';
SELECT * FROM employee WHERE country_of_birth LIKE 'S%';
SELECT * FROM employee WHERE country_of_birth iLIKE 's%';

--count
SELECT country_of_birth, count(*) FROM employee GROUP BY country_of_birth;
SELECT first_name, count(*) FROM employee GROUP BY first_name ORDER BY count(*) DESC;
SELECT country_of_birth, count(*) FROM employee GROUP BY country_of_birth HAVING count(*) > 30;
SELECT country_of_birth, count(*) FROM employee GROUP BY country_of_birth HAVING count(*) > 30 ORDER BY count(*) DESC ;

--AS псевдонимы first_name AS name, ...

SELECT COALESCE(email, 'not applicable') FROM employee;
