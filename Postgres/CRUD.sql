CREATE TABLE employee(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    gender VARCHAR (6),
    email VARCHAR (150),
    data_of_birth DATE
)

DROP TABLE employee;

INSERT INTO employee(first_name, last_name, gender, email, data_of_birth)
VALUES ('Jhon','Doe','MALE', 'a@a.ru','2000-01-01');

UPDATE employee SET email = 'jmathelon0@skypeeeee.com' WHERE id = 1;
