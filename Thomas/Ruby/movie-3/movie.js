$(document).ready(function() {

  var getTitle = function() {
    var settings = {
      url: 'http://omdbapi.com/',
      data: { s: $('#movie-search').val() },
      method: 'get',
    }

    $.ajax(settings).done(function(response){
      var $liElement = $("<li>");
      var $strongElement = $("<strong>");
      response.Search.forEach(function(movie) {
          console.log(movie.Title);
      $strongElement.append(response.title);
      $liElement.append($strongElement);
      $('#movie-search').append($liElement);
      });
    });
  }
  // title input event listener
  $('#get-title').on('click', getTitle);
});

//
// for (i = 0; i < cars.length; i++) {
//     text += cars[i] + "<br>";
// }

// for (var i = 0; i < response.Search.length; i++) {
//   console.log(response.Search[i].Title)
// }

$(document).ready(function() {
  var movieSearch = function() {
    var settings = {
      url: 'http://www.omdbapi.com/?s=' + $('#title').val(),
      // data: { 'movie-search': $('#movie-search').val() },
      method: 'get'
    }
    $.ajax(settings).done(function(response) {
      $('td').remove();
      for (i = 0; i <= response.Search.length; i++) {
        var movie = response.Search[i];
        var $tdElement = $("<td>");
        var $aElement = $("<a>").attr('href', 'http://www.imdb.com/title/' + movie.imdbID).attr('target', "_blank");
        var $imgElement = $("<img>").attr('src', movie.Poster);
        $aElement.append($imgElement);
        $tdElement.append("<strong>" + movie.Title + "</strong>" + "<br>");
        $tdElement.append("<span>Year: " + movie.Year + "</span>" + "<br>");
        $tdElement.append($aElement);
        $('#search-result').append($tdElement);
      }
    });
  }
  // search event listener
  $('#search').on('click', movieSearch);
});
