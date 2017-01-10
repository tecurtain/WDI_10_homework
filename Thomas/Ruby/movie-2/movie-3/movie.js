$(document).ready(function() {

  var addCookie = function() {
    var settings = {
      url: 'http://omdbapi.com/',
      data: { s: $('#movie-search').val() },
      method: 'get',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response){
      var $liElement = $("<li>");
      var $strongElement = $("<strong>");
      var $spanElement = $("<span>");
      $strongElement.append(response.title);
      $spanElement.append(': ' + response.description + ': ' + response.price + ': ' + response.tasty);
      $liElement.append($strongElement);
      $liElement.append($spanElement);
      $('#movie-list').append($liElement);
    });
  }
  // cookie button event listener
  $('#add-cookie').on('click', addCookie);
});
