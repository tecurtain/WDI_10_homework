require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  @movie_name = params[:movie]
  omdb_api = "http://omdbapi.com/?t=#{@movie_name}"

  unless @movie_name.nil? || @movie_name.empty?
    @result = HTTParty.get(omdb_api)
  end

  erb :index
end

# get '/about' do
#   erb :about
# end
