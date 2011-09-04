http = require 'http'

start = ->
  onRequest = (req,res) ->
    res.writeHead 200, { "Content-type": "text/plain" }
    res.write "Hello World!"
    res.end()

  http.createServer(onRequest).listen(8888)  
  console.log "App Started"
  
exports.start = start
