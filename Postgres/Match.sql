SELECT MAX(price) FROM holiday;
SELECT MIN(price) FROM holiday;
SELECT AVG(price) FROM holiday;

SELECT ROUND(AVG(price)) FROM holiday;
SELECT id, destination_country, destination_city, price FROM holiday;
SELECT id, destination_country, destination_city, ROUND(price) FROM holiday;

--sort
SELECT destination_country, destination_city, MAX(price) FROM holiday GROUP BY  destination_country, destination_city;

SELECT SUM(price) FROM holiday;

SELECT destination_country, SUM(price) FROM holiday GROUP BY destination_country;


