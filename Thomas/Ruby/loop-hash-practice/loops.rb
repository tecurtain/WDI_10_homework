require 'pry'

@movie_array = [{"Title"=>"Jaws",
  "Year"=>"1975",
  "imdbID"=>"tt0073195",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BNDcxODkyMjY4MF5BMl5BanBnXkFtZTgwOTk5NTc5MDE@._V1_SX300.jpg"},
 {"Title"=>"Jaws 2",
  "Year"=>"1978",
  "imdbID"=>"tt0077766",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BN2U1MWE1NTMtYjQ2ZC00MTFmLWFmYjItODMyNGYxOTAyZmEzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"},
 {"Title"=>"Jaws: The Revenge",
  "Year"=>"1987",
  "imdbID"=>"tt0093300",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BNGI1MTAxMWItOTE0OC00ZDhkLWE3Y2EtNjFiZmQ4NjQ1NGNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"},
 {"Title"=>"Jaws 3-D",
  "Year"=>"1983",
  "imdbID"=>"tt0085750",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BM2QwYjhiMzQtN2RiYS00MzgxLThmNzItMmJlNmMyMmQyYTA3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"},
 {"Title"=>"The Making of Steven Spielberg's 'Jaws'",
  "Year"=>"1995",
  "imdbID"=>"tt0251821",
  "Type"=>"movie",
  "Poster"=>"N/A"},
 {"Title"=>"Jaws of Satan",
  "Year"=>"1981",
  "imdbID"=>"tt0082580",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyOTY4Mzc0N15BMl5BanBnXkFtZTcwNTY2NjE2NA@@._V1_SX300.jpg"},
 {"Title"=>"Cruel Jaws",
  "Year"=>"1995",
  "imdbID"=>"tt0112747",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BNDE2NTIzMjUtOTQ4ZC00ZWRlLTllZDAtNzZlNzRhNTRiNzA4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg"},
 {"Title"=>"Mako: The Jaws of Death",
  "Year"=>"1976",
  "imdbID"=>"tt0074845",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA3NzQxMzM5ODJeQTJeQWpwZ15BbWU3MDQzNDQ2MjE@._V1_SX300.jpg"},
 {"Title"=>"Jaws in Japan",
  "Year"=>"2009",
  "imdbID"=>"tt1786635",
  "Type"=>"movie",
  "Poster"=>
   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMzc3OTkyNV5BMl5BanBnXkFtZTcwMDA0NzMwNw@@._V1_SX300.jpg"},
 {"Title"=>"Jaws Unleashed",
  "Year"=>"2006",
  "imdbID"=>"tt0479079",
  "Type"=>"game",
  "Poster"=>
   "http://ia.media-imdb.com/images/M/MV5BNzNiYTUyZDUtYzBiMC00ODZkLTllNzYtOTgxOWQzZjhjMzBlXkEyXkFqcGdeQXVyMjYwNDA2MDE@._V1_SX300.jpg"}]

binding.pry

@i = 0

while @i < @movie_array.length  do
   puts("#{@movie_array[@i]["Title"]}" )
   @i +=1
end

# @x= 0
#
# @movie_array[@x].collect do |i|
#   @x +=1
#   puts i
#
# end
# binding.pry
# @movie_array.each {|x| print x, " -- " }
# @movie_array.each do |key, value|
# binding.pry
# end

movie_array.each do |element|
     element.each do |key, value|
          puts "#{key} -- #{value}"
     end
end
