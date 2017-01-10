$(document).ready(function() {

  var addComment = function(event) {

    var postId = event.target;
    var $userComment = $(postId).closest('div').find('input')
    var userComment = $userComment.val();
    var settings = {
      url: '/comments',
      data: {
        'comment[usercomment]': userComment,
        'comment[post_id]': $(postId).data().postId
      },
      method: 'post',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response) {
      var $liElement = $("<li>");
      var $buttonElement = $('<button>').addClass('remove-comment').text('X').attr('data-comment-id', response.id);
      $liElement.append(userComment);
      $liElement.append(' ');
      $liElement.append($buttonElement);
      $buttonElement.on('click', removeComment);
      $(postId).closest('div').find('ul').append($liElement);
      $userComment.val('');
    });
  }

  var addPost = function(e) {
    var settings = {
      url: '/posts',
      data: {
        'post[userpost]': $('#userpost-input').val(),
      },
      method: 'post',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response){
      var $divElement = $("<div>");
      var $pElement = $("<p>");
      var $inputElement = $('<input>');
      var $ulElement = $('<ul>');
      var $buttonAddElement = $('<button>').addClass('submit-comment').text('✓').attr('data-post-id', response.id);
      var $buttonRemoveElement = $('<button>').addClass('remove-post').text('X').attr('data-post-id', response.id);
      $buttonRemoveElement.on('click', removePost);
      $buttonAddElement.on('click', addComment);
      $pElement.text(response.userpost);
      $divElement.append($pElement);
      $pElement.append($buttonRemoveElement);
      $divElement.append($inputElement);
      $divElement.append($buttonAddElement);
      $divElement.append($ulElement);
      $('#posts-list').append($divElement);
      $('#userpost-input').val('');
    });
  }
  var removeComment = function(e) {
    var commentId = e.target;
    var settings = {
      url: '/comments/' + $(commentId).data().commentId,
      method: 'delete',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response){
      $(commentId).closest('li').remove();
    });
  }
  var removePost = function(e) {
    var postId = e.target;
    var settings = {
      url: '/posts/' + $(postId).data().postId,
      method: 'delete',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response){
      $(postId).closest('div').remove();
    });
  }

  // post button event listener
  $('#add-post').on('click', addPost);
  $('.submit-comment').on('click', addComment);
  $('.remove-comment').on('click', removeComment);
  $('.remove-post').on('click', removePost);
});
