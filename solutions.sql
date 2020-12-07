SELECT * FROM artist;-- 1

SELECT first_name, last_name, country FROM employee;--2

SELECT name, composer, milliseconds FROM track--3
WHERE milliseconds > 299000;

SELECT COUNT(*) FROM track--4
WHERE milliseconds > 299000;

--------------------BlackDiamond----------------------------------

SELECT AVG(milliseconds) from track;

SELECT COUNT (*) FROM invoice
WHERE billing_country = 'USA';

SELECT * FROM customer 
WHERE first_name LIKE '%a%';

SELECT * FROM track 
ORDER BY milliseconds DESC LIMIT 10; 

SELECT * FROM track 
ORDER BY milliseconds ASC LIMIT 20;

SELECT * FROM customer
WHERE state ='CA' 
OR state = 'WA';

SELECT * FROM customer
WHERE state IN ('CA','WA','UT','FL','AZ');

INSERT INTO artist (name) 
VALUES ('Allen Stone');

INSERT INTO customer (state, country, postal_code, phone, fax, email,first_name, last_name, company, address, city)
VALUES ('UT','USA','84604','8015558474', '8378392', 'nate@email.com','Nate','Waite','Nate Waite Music','3558 N 230 E','Provo');

SELECT * FROM playlist
WHERE name LIKE 'Classical%';