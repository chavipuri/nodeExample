var express = require('express');

var PORT = 8080;

var  app = express();
app.get('/', function (req, res) {
  res.send('I am the best!!!!!');
});

app.listen(5000);
module.exports = app;
console.log('Running now on EC2 machine');
