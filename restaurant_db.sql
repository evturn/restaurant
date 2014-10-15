CREATE DATABASE restaurant_db;

\c restaurant_db;

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

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	food_id INTEGER,
	party_id INTEGER
	);

INSERT INTO foods (name, price)
	VALUES ('Baked Noodles', 5);

INSERT INTO foods (name, price)
	VALUES ('Chocolate Covered Beef Sticks', 5);

INSERT INTO foods (name, price)
	VALUES ('Plain Ass Sandwich', 5);

INSERT INTO foods (name, price)
	VALUES ('Chocolate Covered Beef Sticks', 5);

INSERT INTO parties (name, size)
	VALUES ('Martha', 1);

INSERT INTO parties (name, size)
	VALUES ('Graig', 5);

INSERT INTO parties (name, size)
	VALUES ('Dandrew', 3);

INSERT INTO parties (name, size)
	VALUES ('Fill-up', 17);




