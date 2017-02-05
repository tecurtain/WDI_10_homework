var app = require('express')();
const PORT = 3000;

app.set('views', './views');
app.set('view engine', 'ejs');

app.get('/', function(request, response) {
  response.render('index', {message: 'Totes OMDB Index Page'});
});

app.listen(PORT, function() {
  console.log(`Example app listening on port ${PORT}`)
});
