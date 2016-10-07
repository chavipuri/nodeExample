var request = require('supertest');
var app = require('../server.js');
 
describe('GET /', function() {
  it('respond with best', function(done) {
    request(app).get('/').expect('Hello Ralph!!', done);
  });
});
