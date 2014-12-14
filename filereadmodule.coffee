fs = require 'fs'
path = require 'path'

module.exports = (dirName, extFilter, callback) ->
  files = []
  fs.readdir dirName, (err, data) ->
    if err
      callback err
    else
      for file in data
        if path.extname(file) == ".#{extFilter}"
          files.push(file)
      callback null, files
