CREATE DATABASE restaurant_db;

\c restaurant_db;

CREATE TABLE food (
	id SERIAL PRIMARY KEY,
	name varchar(100),
	price INTEGER
	);

CREATE TABLE parties (
	id SERIAL PRIMARY KEY, 
	size INTEGER
	);

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	food_id INTEGER,
	party_id INTEGER
	);

INSERT INTO food (name, price)
	VALUES ('Hamburger', 5);

INSERT INTO food (name, price)
	VALUES ('Pizza', 5);

INSERT INTO food (name, price)
	VALUES ('Plain Ass Sandwich', 5);

INSERT INTO food (name, price)
	VALUES ('Salad', 5);