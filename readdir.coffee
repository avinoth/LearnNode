fs = require 'fs'
path = require 'path'

fs.readdir process.argv[2], (err, data) ->
  for file in data
    if path.extname(file) == ".#{process.argv[3]}"
      console.log file
