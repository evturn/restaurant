require 'bundler'
Bundler.require

require_relative 'models/food'
require_relative 'models/party'
require_relative 'models/order'


ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	dbname: 'restaurant_db'
	})



# ------Food-------

get '/foods' do
	@foods = Food.all
	erb :'food/index'
end

get "/foods/:party_id/new" do

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


# --------Order--------

get '/' do


	erb :'order/index'
end





post '/orders' do
	@porder = Party.create(params[:party])
	@forder = Food.create(params[:food])
	@order = Order.create({ party_id: @porder.id, food_id: @forder.id })

	redirect "/orders/#{@order.id}"
end

get '/orders/:order_id' do
	food = Order.find(params[:food])
	


	erb :'order/show'

end






# jane = Party.create({name: "McBain", size: 99})

# dinner = Food.create({name: "Cinder Blocks", price: 5})

# evening = Order.create({party: jane, food: dinner})
