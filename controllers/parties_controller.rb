class PartiesController < ApplicationController
  

  get '/new' do
    
    erb :'parties/new'
  end


  post '/' do
    
    @party = Party.create(params[:party])
    redirect "/parties/#{@party.id}"
  end

  get '/:id' do
    
    @party = Party.find(params[:id])
    @food = Food.all

    erb :'parties/show'
  end

  post '/:id' do
    
    @party = Party.find(params[:id])
    @food = params[:food_id]
    @order = Order.create({food_id: @food, party_id: @party.id})
    
    redirect "/parties/#{@party.id}/orders"
  end

  get '/:id/orders' do
    
    @party = Party.find(params[:id])
    @foods = Food.all

    erb :'orders/show'
  end

  patch '/:id' do
    
    @party = Party.find(params[:id])
    @food = params[:food_id]
    @order = Order.create({food_id: @food, party_id: @party.id})

    
    redirect "/#{@party.id}/orders"
  end

  get '/:id/receipt' do
    
    @party = Party.find(params[:id])   
    @names = @party.foods.map { |food| food.name }
    @costs = @party.foods.map { |food| food.price }
    erb :'orders/receipt'
  end

  delete '/:id/orders' do
    
    party = Party.find(params[:id])
    food  = Food.find(params[:food_id])
    Order.find_by(party: party, food: food).destroy
    redirect "/parties/#{party.id}/orders"
  end

  get '/:id/thank_you' do
    
    @party = Party.find(params[:id])

    erb :'parties/paid'
  end

  get '/:id/print' do
    
    @order = Order.find(params[:id])
    File.open('./receipt.txt', 'a+') { |f| f.write("#{@order.food.name} for a subtotal of #{@order.food.price} and a grand total of (#{@order.food.price}.to_i * 1.7.to_i)") }
    
    send_file('./receipt.txt')

    erb :'orders/print'
end




end