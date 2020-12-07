CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INTEGER,
  height INTEGER ,
  city VARCHAR(250),
  favorite_color VARCHAR (250)
);

INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Nate Waite',29,188,'Ogden','Blue'),('Kaylie Waite',29,155,'San Jose','Gold'),('Bash Waite',2,65,'Mission Viejo','Green'),('Lucas Waite',1,45,'Provo','red'),('Delightra Cutler',70,167,'San Fansisco','Pink');

SELECT * FROM person
ORDER BY height DESC

SELECT * FROM person
ORDER BY height ASC

SELECT * FROM person
ORDER BY age DESC

SELECT * FROM person
ORDER BY age ASC

SELECT * from person
where age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * from person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red'

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('orange','Blue','Green');

SELECT * FROM person
WHERE favorite_color IN ('purple','yellow');

-------------TABLE_ORDERS----------------------------------------------

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(200),
  product_price NUMERIC,
  quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (0,'Guitar',2000.00, 1),(0,'Amp',750.00,1),(1,'SM58',89.99,3),(2,'Drum Heads',110.00,3),(1,'XLR Cable',45.00,3);

SELECT * FROM orders

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM (product_price * quantity)
FROM orders
WHERE person_id = 1

-------------Artist Table----------------------------------------------------

INSERT INTO artist (name)
VALUES ('Jay Warren'),('Bri Ray'),('Jen Blosil');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%BLACK%';

------------EMPLOYEE TABLE -------------------------------------------

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) from employee;

SELECT MIN(birth_date) from employee;

SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

------------INVOICE----------------------------------------------------------------------
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) from invoice;

SELECT MIN(total) FROM invoice;

SELECT * from invoice
WHERE total > 5;

SELECT COUNT(*) from invoice
WHERE total < 5;

SELECT COUNT (*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

SELECT AVG(total) from invoice;

SELECT SUM(total) from invoice;