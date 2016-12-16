require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  @movie_name = params[:movie]
  omdb_api = "http://omdbapi.com/?s=#{@movie_name}"

  unless @movie_name.nil? || @movie_name.empty?
    @result = HTTParty.get(omdb_api)
    @movies = @result["Search"]
  end

  erb :index
  # binding.pry
end

get '/movie_show/:movie' do
  @movie_name = params[:movie]
  omdb_api_single = "http://omdbapi.com/?t=#{@movie_name}"
  @result_single = HTTParty.get(omdb_api_single)
  @title = @result_single["Title"]
  @year = @result_single["Year"]
  @rated = @result_single["Rated"]
  @released = @result_single["Released"]
  @runtime = @result_single["Runtime"]
  @genre = @result_single["Genre"]
  @director = @result_single["Director"]
  @writer = @result_single["Writer"]
  @actors = @result_single["Actors"]
  @plot = @result_single["Plot"]
  @poster = @result_single["Poster"]
  erb :movie_show
end



# get '/' do
#   movie_name = params[:movie]
#   @result = {}
#   @films = []
#   if movie_name
#     @result = HTTParty.get('http://omdbapi.com/?s=' + movie_name)['Search']
#       @result.each do |movie|
#         movie.each do |key, value|
#         end
#       end
#   end
#   erb :index
#   binding.pry
# end
