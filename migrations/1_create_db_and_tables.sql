CREATE DATABASE restaurant_db;

\c restaurant_db;

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	food_id INTEGER not null,
	party_id INTEGER not null
	);

CREATE TABLE foods (
	id SERIAL PRIMARY KEY,
	name varchar(100)
	);

INSERT INTO foods (name)
	VALUES ('Bag of Nails');

INSERT INTO foods (name)
	VALUES ('Plain Ass Sandwich');

INSERT INTO foods (name)
	VALUES ('Chocolate Covered Ankle Socks');

INSERT INTO foods (name)
	VALUES ('Gallon of Splenda');

INSERT INTO foods (name)
	VALUES ('The Beef Chicken');


CREATE TABLE parties (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
	);

SELECT * FROM orders;

SELECT * FROM parties;

SELECT * FROM foods;




