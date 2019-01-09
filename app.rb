require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/new' do
    erb :create_puppy
  end
  post '/puppy' do
    @age = params["months_old"]
    @breed = params["breed"]
    @name = params["name"]
    erb :display_puppy
  end

end
