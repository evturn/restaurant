class ApplicationController < Sinatra::Base
  helpers Sinatra::AuthenticationHelper
  helpers ActiveSupport::Inflector
  helpers Sinatra::LinkHelper
  helpers Sinatra::FormHelper
  
  ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'restaurant_db'
  })

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)


  enable :sessions, :method_override

  get '/' do

    erb :index
  end

  get '/orders/:id' do
    authenticate!
    @order = Order.find(params[:id])
    @food = Food.all
    erb :'orders/show'
  end

end