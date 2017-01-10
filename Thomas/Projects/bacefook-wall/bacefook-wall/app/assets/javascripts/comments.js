$(document).ready(function() {

  var addComment = function() {
    var settings = {
      url: '/comments',
      data: {
        'comment[usercomment]': $('#usercomment-input').val(),
      },
      method: 'post',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response){
      var $liElement = $("<li>");
      var $spanElement = $("<span>");
      $spanElement.append(response.usercomment);
      $liElement.append($spanElement);
      $('#comments-list').append($liElement);
    });
  }
  // comment button event listener
  $('#add-comment').on('click', addComment);
});
