require_relative 'app_config'
require 'sinatra'
require 'sinatra/activerecord'
require_relative './app/models/elephant'

set_database!

get '/' do
  "Hello World!"
end
