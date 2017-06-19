require_relative 'config/environment'

class App < Sinatra::Base
  CREATE = 'create_puppy'
  DISPLAY = 'display_puppy'

  get '/' do
    erb :index
  end

  get '/' + CREATE do
    erb CREATE.to_sym
  end

  post '/' + DISPLAY do
    @puppy = Puppy.new(params)
    erb DISPLAY.to_sym
  end
end
