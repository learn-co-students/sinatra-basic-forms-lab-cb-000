require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "route works"
    erb :index
  end

  get '/new' do
    "route works as well"
    erb :create_puppy
  end

  post '/new' do
    "This one as well"
    dog_name = params[:name]
    dog_breed = params[:breed]
    dog_age = params[:age]
    @new_dog = Puppy.new(dog_name, dog_breed, dog_age)
    erb :display_puppy
  end
end
