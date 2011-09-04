http = require 'http'
url = require 'url'

start = (route, handle) ->
  onRequest = (request,response) ->
    pathname = url.parse(request.url).pathname
    console.log "Request for #{pathname} received"
    route pathname, handle, response

  http.createServer(onRequest).listen(8888)  
  console.log "App Started"
  
exports.start = start
