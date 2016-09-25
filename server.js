var express = require('express');

// Constants
var PORT = 8080;

// App
var  app = express();
app.get('/', function (req, res) {
  res.send('Hey! Chavi & Ankush');
});

app.listen(process.env.PORT || 5000);
module.exports = app;
console.log('Running now on http://localhost:' + 5000);
