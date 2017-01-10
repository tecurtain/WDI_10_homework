$(document).ready(function() {

  var addPost = function() {
    var settings = {
      url: '/posts',
      data: {
        'post[userpost]': $('#userpost-input').val(),
      },
      method: 'post',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response){
      var $liElement = $("<li>");
      var $spanElement = $("<span>");
      $spanElement.append(response.userpost);
      $liElement.append($spanElement);
      $('#posts-list').append($liElement);
    });
  }
  // post button event listener
  $('#add-post').on('click', addPost);
});
