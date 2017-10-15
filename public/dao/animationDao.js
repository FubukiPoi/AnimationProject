var dbUtils = require('../utils/db');
var sql = require('../cfg/sql');

module.exports = {
    findAllAnimation: function(req, res, next) {
        var status=req.query.status;
        var orderBySeason_1 = ' order by year,field(season,"秋","夏","春","冬")';
        var orderorderBySeason_2 = ' order by year,field(season,"冬","春","夏","秋")';
        if(status!=null ){
            var findAllAnimations=sql.findAllAnimation+' where status = '+status;
            if(status==3){
                findAllAnimations = findAllAnimations.concat(orderorderBySeason_2);
            }else{
                findAllAnimations = findAllAnimations.concat(orderBySeason_1);
            }
        }else{
            var findAllAnimations=sql.findAllAnimationWithNum;
        }
        dbUtils.dbConn(findAllAnimations,status, function(err, rows) {
            if (err) {
                console.log(err);
                var msg = 'no records';
                res.render('index', {
                title: 'Animation Information',
                msg: msg
                });
            }
            var data = rows;
            res.render('index', {
                title: 'Animation Information',
                data: data,
                msg:''
            });
        });
    },
    addAnimation: function(req, res, next) {
        var sqlParams = {
            animation_name: req.body.animation_name,
            number: req.body.number,
            year:req.body.year,
            season: req.body.season,
            status: req.body.status
        };
        dbUtils.dbConn(sql.addAnimation, sqlParams, function(err, rows) {
            if (err) {
                console.log(err);
            }
            res.setHeader('Content-Type', 'application/json');
            res.redirect('/?status='+req.body.status);
        });
    },
    findOneAnimation: function(req, res, next) {
        var animation_id = req.query.animation_id;
        var data = "";

        dbUtils.dbConn(sql.findOneAnimation, animation_id, function(err, rows) {
            if (err) {
                console.log(err);
            }
            var data = rows;
            res.render('animationEdit', {
                title: 'Edit Animation',
                data: data
            });
        });
    },
    editAnimation: function(req, res, next) {
        var animation_id = req.body.animation_id;

        var sqlParams = {
            animation_id: req.body.animation_id,
            animation_name: req.body.animation_name,
            number: req.body.number,
            year:req.body.year,
            season: req.body.season,
            status: req.body.status
        };

        dbUtils.dbConn(sql.editAnimation, [sqlParams, animation_id], function(err, rows) {
            if (err) {
                console.log(err);
            }

            res.setHeader('Content-Type', 'application/json');
            res.redirect('/?status='+req.body.status);
        });
    },
    deleteAnimation: function(req, res, next) {
        var id = req.query.animation_id;
        dbUtils.dbConn(sql.deleteAnimation, id, function(err, rows) {
            if (err) {
                console.log(err);
            }
            res.redirect('/?status='+req.body.status);
        });
    },
    createChart:function(req, res, next) {
        dbUtils.dbConn(sql.createChart, function(err, rows) {
            if (err) {
                console.log(err);
                var msg = 'no records';
                res.render('chart', {
                title: 'Chart Information',
                msg: msg
                });
            }
            var data = rows;
            res.render('chart', {
                title: 'Chart Information',
                data: data
            });
        });
    }
}