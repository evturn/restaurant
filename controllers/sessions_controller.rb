class SessionsController < ApplicationController

  get '/new' do    
    erb :'sessions/new'
  end

  post '/' do
    user = User.find_by({username: params[:username]})
    if user.password == params[:password]
      session[:current_user] = user.id
      redirect '/parties/new'
    else
      redirect '/'
    end
  end

end