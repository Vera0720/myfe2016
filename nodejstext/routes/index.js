var express = require('express');
var router = express.Router();
/* GET home page. */
router.get('/', function(req, res) {
  res.render('index',{uname: null});
});
router.get('/login', function(req, res) {
  res.render('login');
});
router.post('/checkLogin', function(req, res) {
  var username = req.body.uname;
  var password = req.body.pwd;
  if(username == 'admin' && password == '1234'){
    res.render('index',{uname : username})
  }else{
    res.render('error')
  }
});
router.get('/reg', function(req, res) {
  res.render('reg');
});
router.get('/checkUser', function(req, res) {
  var name = req.query.username;
  if(name == 'admin'){
    res.send('fail');
  }else{
    res.send('ok');
  }
});
module.exports = router;
