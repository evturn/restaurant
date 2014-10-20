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

INSERT INTO foods (name, price)
	VALUES ('Plain Ass Sandwich', 20);

INSERT INTO foods (name, price)
	VALUES ('Turkey Club Burrito', 40);	

INSERT INTO foods (name, price)
	VALUES ('Soup du Garden Hose', 55);

INSERT INTO foods (name, price)
	VALUES ('The Beef Chicken', 35);

INSERT INTO foods (name, price)
	VALUES ('Tripe Shake', 50);

INSERT INTO foods (name, price)
	VALUES ('A Rake', 23);	

INSERT INTO foods (name, price)
	VALUES ('Bowl of Salad Dressing', 3);

INSERT INTO foods (name, price)
	VALUES ('Bag of Nails', 100);

INSERT INTO foods (name, price)
	VALUES ('Water Covered Cinder Blocks', 35);

INSERT INTO foods (name, price)
	VALUES ('Gallon of Splenda', 50);
	


CREATE TABLE parties (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
	);

SELECT * FROM orders;

SELECT * FROM parties;

SELECT * FROM foods;




