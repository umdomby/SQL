CREATE TABLE bicycle
(
    id    BIGSERIAL    NOT NULL PRIMARY KEY,
    make  VARCHAR(100) NOT NULL,
    type  VARCHAR(100) NOT NULL,
    price NUMERIC(19,2) NOT NULL
);

INSERT INTO  bicycle (make, type, price) VALUES ('Indi ATB', 'Mountain Bike', '100.00');

--REFERENCES
ALTER TABLE employee ADD bicycle_id BIGINT REFERENCES bicycle(id);
--ONE-TO-ONE
ALTER TABLE employee ADD UNIQUE (bicycle_id);
--SET
UPDATE employee SET bicycle_id = 2 WHERE id = 4;
--JOINS
SELECT * FROM employee JOIN bicycle ON employee.bicycle_id = bicycle.id;
SELECT employee.first_name, bicycle.make, bicycle.type, bicycle.price FROM employee JOIN bicycle ON employee.bicycle_id = bicycle.id;
SELECT * FROM employee LEFT JOIN bicycle ON bicycle_id = employee.bicycle_id WHERE bicycle_id IS NOT NULL;

SELECT * FROM employee INNER JOIN bicycle ON bicycle_id = employee.bicycle_id WHERE bicycle_id IS NOT NULL;
SELECT * FROM employee INNER JOIN bicycle ON bicycle_id = employee.bicycle_id;

SELECT * FROM employee RIGHT JOIN bicycle ON bicycle_id = employee.bicycle_id;

SELECT * FROM employee FULL OUTER JOIN bicycle ON bicycle_id = employee.bicycle_id WHERE bicycle_id IS NOT NULL;


