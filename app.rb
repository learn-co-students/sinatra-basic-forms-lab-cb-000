require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    #renders welcome
    erb :index
  end

  get '/new' do
    #renders form
    erb :create_puppy
  end

  post '/new' do
    #displays puppy
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
  end

end
