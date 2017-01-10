var getMovies = function() {
  var movie = $('#search').val();
  var settings = {
    url: 'http://omdbapi.com',
    method: 'get',
    dataType: 'json',
    data: { s: movie }
  }
  $.ajax(settings).done(function(response) {
    var movies = response.Search;
    _.each(movies, function(movie){
      // var source = $('#movie-template').html();
      // var template = Handlebars.compile(source);
      var html = Handlebars.templates.movie({
        title: movie.Title,
        year: movie.Year
      });
      $('#list').append(html);
      // $('#list').append(movie.Title + '<br />');
    });
  });
};

$('button').on('click', getMovies);
