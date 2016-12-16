require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'httparty'

get '/' do
  movie_info = params[:movie]
  @result = {}
  if movie_info
    @result = HTTParty.get("http://omdbapi.com/?i=#{movie_info}&tomatoes=true")
    @title = @result["Title"]
    @year = @result["Year"]
    @rated = @result["Rated"]
    @released = @result["Released"]
    @runtime = @result["Runtime"]
    @genre = @result["Genre"]
    @director = @result["Director"]
    @writer = @result["Writer"]
    @actors = @result["Actors"]
    @plot = @result["Plot"]
    @review = @result["tomatoConsensus"]
    binding.pry
  end
  erb :index
end
