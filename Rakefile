require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'

require_relative 'controllers/application_controller'
require_relative 'models/food'
require_relative 'models/order'
require_relative 'models/party'
require_relative 'models/user'

namespace :db do
	desc "Create Restaurant Database"
	task :create_db do
		conn = PG::Connection.open()
    conn.exec('CREATE DATABASE restaurant_db;')
    conn.close
	end
	
	desc "Drop Restaurant Database"
	task :drop_db do
		conn = PG::Connection.open
		conn.exec('DROP DATABASE restaurant_db')
		conn.close
	end
	
	desc "create junk data for development"
	task :junk_data do

	require_relative 'connection'
	require_relative 'models/food'
	require_relative 'models/order'
	require_relative 'models/party'
	
	Food.create({name: 'Plain Ass Sandwich',          price: 20})
	Food.create({name: 'Turkey Club Burrito',         price: 40})
	Food.create({name: 'Soup du Garden Hose',         price: 55})
	Food.create({name: 'The Beef Chicken',            price: 35})
	Food.create({name: 'Tripe Shake',                 price: 50})
	Food.create({name: 'A Rake',                      price: 23})
	Food.create({name: 'Bowl of Salad Dressing',      price: 3})
	Food.create({name: 'Bag of Nails',                price: 100})
	Food.create({name: 'Water Covered Cinder Blocks', price: 35})
	Food.create({name: 'Gallon of Splenda',           price: 50})
	
	foods = Food.all

	end

end
