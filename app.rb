require 'bundler'
Bundler.require

require_relative 'models/food'
require_relative 'models/party'
require_relative 'models/order'


ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	dbname: 'restaurant_db'
	})

get '/' do

end

# ------Food-------

get '/foods' do
	@foods = Food.all
	erb :'food/index'
end

get '/foods/new' do

	erb :'food/new'
end

get '/foods/:id' do
	@parties = Party.all
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

# ------Party-------


get '/parties' do
	@parties = Party.all

	erb :'party/index'
end

get '/parties/new' do

	erb :'party/new'
end

get '/parties/:id' do
	@party = Party.find(params[:id])
	erb :'party/show'
end

post '/parties' do
	party = Party.create(params[:party])
	redirect '/parties'
end

get '/parties/:id/edit' do
	@party = Party.find(params[:id])
	erb :'party/edit'
end

patch '/parties/:id' do
	party = Party.find(params[:id])
	party.update(params[:party])
	party.save
	redirect '/parties'
end

delete '/parties/:id' do
	Party.destroy(params[:id])
	redirect '/parties'
end


# jane = Party.create({name: "Jane", size: 3})

# dinner = Food.create({name: "Cheese Pie", price: 5})

# evening = Order.create({party: jane, food: dinner})

# --------Order--------

post '/orders' do

	# order = Order.create(params[:id])
	food = Food.find(params[:id])
	party = Party.find(params[:id])


	redirect '/foods'
end




