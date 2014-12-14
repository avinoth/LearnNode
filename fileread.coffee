mymodule = require './filereadmodule.js'


mymodule process.argv[2], process.argv[3], (err, data) ->
  if err
    console.log err
  else
    for file in data
      console.log file

