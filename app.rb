require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :index
  end

end
