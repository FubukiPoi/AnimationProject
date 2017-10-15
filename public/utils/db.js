var mysql = require('mysql');
var db_config = require('../cfg/dbConfig');
//var sql = require('../cfg/sql');

var pool = mysql.createPool(db_config);
var dbConn = function(){
    var sql,para,callback;
    if (arguments.length == 2) {
      sql = arguments[0];
      console.log('sql:'+sql);
      callback = arguments[1];
    } else {
      sql = arguments[0];
      para = arguments[1];
      callback = arguments[2];
    }
    if (!sql) {
      callback();
      return;
    }
    if (!para) {
      para = [];
    }
    pool.query(sql, para, function(err, rows, fields) {
      if (err) {
        console.log(err);
        callback(err, null);
        return;
      };
      callback(null, rows, fields);
    });
  }
module.exports={
	dbConn:dbConn
}

