require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/teas" do
    erb :teas
  end

  post "/order" do
    @customer = params[:order]
    erb :order_placed
  end
end
