// Generated by CoffeeScript 1.8.0
(function() {
  var fs, path;

  fs = require('fs');

  path = require('path');

  module.exports = function(dirName, extFilter, callback) {
    var files;
    files = [];
    return fs.readdir(dirName, function(err, data) {
      var file, _i, _len;
      if (err) {
        return callback(err);
      } else {
        for (_i = 0, _len = data.length; _i < _len; _i++) {
          file = data[_i];
          if (path.extname(file) === ("." + extFilter)) {
            files.push(file);
          }
        }
        return callback(null, files);
      }
    });
  };

}).call(this);