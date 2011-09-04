http = require 'http'
url = require 'url'

start = (route, handle) ->
  onRequest = (request,response) ->
  
    postData = ""
    pathname = url.parse(request.url).pathname
    
    console.log "Request for #{pathname} received"
    
    request.setEncoding "utf8"
    
    request.addListener "data", (chunk) ->
      postData += chunk
      
    request.addListener "end", ->
      route pathname, handle, response, postData

  http.createServer(onRequest).listen(8888)  
  console.log "App Started"
  
exports.start = start
