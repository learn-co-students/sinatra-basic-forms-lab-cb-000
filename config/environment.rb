ENV['SINATRA_ENV'] ||= "test"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './models/puppy'
require './app'
