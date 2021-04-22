SELECT NOW();
SELECT NOW()::DATE;
SELECT NOW() - INTERVAL '1 YEAR';
SELECT NOW() - INTERVAL '11 MONTHs';
SELECT NOW() - INTERVAL '11 DAYS';
SELECT NOW() + INTERVAL '11 DAYS';
SELECT EXTRACT(YEAR FROM now())
SELECT first_name, last_name, gender, country_of_birth, date_of_birth, age(now(), date_of_birth) AS age FROM employee;
