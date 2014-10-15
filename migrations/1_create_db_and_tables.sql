CREATE DATABASE restaurant_db;

\c restaurant_db;

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	food_id INTEGER not null,
	party_id INTEGER not null
	);

CREATE TABLE foods (
	id SERIAL PRIMARY KEY,
	name varchar(100),
	price INTEGER
	);

INSERT INTO foods (name, price)
	VALUES ('Bag of Nails', 100);

INSERT INTO foods (name, price)
	VALUES ('Plain Ass Sandwich', 20);

INSERT INTO foods (name, price)
	VALUES ('Chocolate Covered Ankle Socks', 35);

INSERT INTO foods (name, price)
	VALUES ('Gallon of Splenda', 50);

INSERT INTO foods (name, price)
	VALUES ('The Beef Chicken', 35);


CREATE TABLE parties (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
	);

SELECT * FROM orders;

SELECT * FROM parties;

SELECT * FROM foods;




