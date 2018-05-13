require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :index
  end
  
  get "/new" do
    erb :create_puppy
  end
  
  post "/" do
    @puppy = Puppy.new(params[:name].to_s, params[:breed].to_s, params[:age].to_s)
    
    erb :display_puppy
  end

end