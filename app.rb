require 'bundler'
Bundler.require

require_relative 'models/food'

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	dbname: 'restaurant_db'
	})

get '/' do

end

get '/foods' do
	@foods = Food.all
	erb :'food/index'
end

get '/foods/new' do

	erb :'food/new'
end

get '/foods/:id' do
	@food = Food.find(params[:id])
	erb :'food/show'
end

post '/foods' do
	food = Food.create(params[:food])
	redirect '/foods'
end

get '/foods/:id/edit' do
	@food = Food.find(params[:id])
	erb :'food/edit'
end

patch '/foods/:id' do
	food = Food.find(params[:id])
	food.update(params[:food])
	food.save
	redirect '/foods'
end

delete '/foods/:id' do
	Food.destroy(params[:id])
	redirect '/foods'
end



