CREATE DATABASE restaurant_db;

\c restaurant_db;

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	food_id INTEGER,
	party_id INTEGER
	);

CREATE TABLE foods (
	id SERIAL PRIMARY KEY,
	name varchar(100),
	price INTEGER
	);

CREATE TABLE parties (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50), 
	size INTEGER
	);

SELECT * FROM orders;

SELECT * FROM parties;

SELECT * FROM foods;




