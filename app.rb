require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  # dont see whats wrong hera
  get '/new' do
    erb :create_puppy
  end

  # on post
  post '/display_puppy' do
    @pup = Puppy.new(params[:name], params[:breed], params[:age])

    # p @pup.name

    erb :display_puppy
  end


end
