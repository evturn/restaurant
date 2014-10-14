require 'bundler'
Bundler.require

conn = PG::Connection.open()


conn.exec('CREATE DATABASE restaurant_db;')
conn.close

conn.PG::Connection.open(dbname: 'restaurant_db')
conn.exec('CREATE TABLE food (id SERIAL PRIMARY KEY, name VARCHAR(255), price INTEGER;')
conn.exec('CREATE TABLE parties (id SERIAL PRIMARY KEY, size INTEGER);')
conn.exec('CREATE TABLE orders (id SERIAL PRIMARY KEY, food_id INTEGER, party_id, paid BOOLEAN;')

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	dbname: 'restaurant_db'
	})

