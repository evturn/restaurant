require 'bundler'
Bundler.require

require_relative 'models/food'
require_relative 'models/party'
require_relative 'models/order'


ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	dbname: 'restaurant_db'
	})



# --------Order--------

get '/' do

	erb :'order/index'
end

post '/orders' do
	# get the party id from params and find the party 
	# if params {id: 3} then params[:id]
	# if params {party_id: 3} then params[:party_id]
 #  if params {party: {id: 3}, food: { id: 2}}
 #  params[:party][:id]
 # get the food id from params and then find the food 
	@party = Party.find_or_create_by(params[:party_id])


  redirect "/orders/#{@party.id}"
end

get '/orders/:id' do
	@order = Order.find(params[:id])
	@order_food = @order.food
	@order_party = @order.party

	erb :'order/show'
end

get '/orders/:id/edit' do
	@order = Order.find(params[:id])
	@order_food = @order.food
	@order_party = @order.party

	erb :'order/edit'
end

patch '/orders/:id' do
	@order = Order.find(params[:id])
	@order.food
	@order.party
	@order.food.update(params[:food])
	@order.party.update(params[:party])
	@order.save
	redirect "/orders/#{@order.id}"
end

delete '/orders/:id' do
	Order.destroy(params[:id])
	redirect '/'
end



# ------Food-------

get '/foods' do
	@foods = Food.all
	erb :'food/index'
end

get "/foods/:id/new" do

	erb :'food/new'
end

get '/foods/:id' do
	@food = Food.find(params[:id])
	@food_parties = @food.parties

	erb :'food/show'
end

post '/foods' do
	food = Food.create(params[:food])
	redirect '/orders'
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

#
# ------Party-------
#
#
#
#
#
#
#

get '/parties' do
	@parties = Party.all

	erb :'party/index'
end

get '/parties/new' do

	erb :'party/new'
end

get '/parties/:id' do
	@party = Party.find(params[:id])
	@party_foods = @party.foods
	erb :'party/show'
end

post '/parties' do
	party = Party.create(params[:party])
	redirect "/foods/#{party.id}/new"
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









# jane = Party.create({name: "McBain", size: 99})

# dinner = Food.create({name: "Cinder Blocks", price: 5})

# evening = Order.create({party: jane, food: dinner})
