require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'httparty'

get '/' do
    @result = HTTParty.get("http://api.icndb.com/jokes/random")
    @joke = @result["value"]["joke"]
  erb :index
end
