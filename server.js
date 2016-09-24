var express = require('express');

// Constants
var PORT = 8080;

// App
var  app = express();
app.get('/', function (req, res) {
  res.send('Hey Chavi & Ankush\n');
});

app.listen(process.env.PORT || 5000);
//console.log('Running on http://localhost:' + PORT);
