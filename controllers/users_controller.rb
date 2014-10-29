class UsersController < ApplicationController

  get '/new' do
    erb :'users/new'
  end

  post '/' do
    user = User.new(params[:user])
    user.password = params[:password]
    user.save!
    session[:current_user] = user.id
    redirect "/parties/new"
  end

end