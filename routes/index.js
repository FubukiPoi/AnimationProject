var express = require('express');
var dbUtils = require('../public/utils/db');
var animationDao = require('../public/dao/animationDao');
var sql = require('../public/cfg/sql');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  animationDao.findAllAnimation(req, res, next);
});
//Add
router.post('/animationAdd',function(req,res,next){
	animationDao.addAnimation(req, res, next);
});
//Edit
router.post('/animationEdit',function(req,res,next){
	animationDao.editAnimation(req, res, next);
});

//Delete
router.get('/animationDelete', function(req, res, next) {
    animationDao.deleteAnimation(req, res, next);
});
//Chart
router.get('/chart', function(req, res, next) {
    animationDao.createChart(req, res, next);
});

module.exports = router;
