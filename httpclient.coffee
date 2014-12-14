http = require 'http'
url = process.argv[2]

http.get url, (resp) ->
  resp.on 'data', (data) ->
    console.log data.toString()

  resp.on 'error', (e) ->
    console.log e
