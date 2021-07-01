-- Comments in SQL Start with dash-dash --

--Insert a chair 
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', '44', 'false');
INSERT 0 1

--Insert a stool
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', '25.99', 'true');
INSERT 0 1

--Insert a table
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('table', '124.00', 'false');
INSERT 0 1

--Display all rows and columns
products_db=# SELECT *
products_db-# FROM products
products_db-# ;

--Display all names 
products_db=# SELECT name
products_db-# FROM products;

--Display the name and price 
products_db=# SELECT name, price
products_db-# FROM products;

--Add my own product
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('bench', '89.99', 'false');

--Select products that can be returned
products_db=# SELECT *
products_db-# FROM products
products_db-# WHERE can_be_returned = 'true';

--Price less than 44
products_db=# SELECT *
products_db-# FROM products
products_db-# WHERE price < 44;

--Prices between 22.50 and 99.99
products_db=# SELECT *
products_db-# FROM products
products_db-# WHERE price > 22.50 AND price < 99.99;

--SALE...$20 off
products_db=# UPDATE products
products_db-# SET price = price - 20;

--Remove if less than $25
products_db=# DELETE FROM products WHERE price < 25;

--Sale Over
products_db=# UPDATE products
products_db-# SET price = price + 20;

--New Policy: everything is returnable
products_db=# UPDATE products
products_db-# SET can_be_returned = 'true';