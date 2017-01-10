var offset = 0;
var getGiphs = function() {
  var giph = $('#search').val();
  var settings = {
    url: 'http://api.giphy.com/v1/gifs/search?api_key=dc6zaTOxFJmzC',
    // url: `http://api.giphy.com/v1/gifs/search?q=${giph}&api_key=dc6zaTOxFJmzC`
    method: 'get',
    dataType: 'json',
    data: {
      q: giph,
      limit: 10,
      offset: offset
    }
  };
  $.ajax(settings).done(function(response) {
    // $('img').remove();
    console.log(response);
    var giphs = response.data;
    _.each(giphs, function(giph){
      var html = Handlebars.templates.giph({
        image_url: giph.images.downsized.url
      });
      $('#show').append(html);
    });
  });
};

$('button').on('click', getGiphs);
$(document).on('scroll', function() {
  if (document.body.scrollHeight ==
      document.body.scrollTop +
      window.innerHeight) {
      offset += 10;
      getGiphs();
  }
});
