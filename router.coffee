route = (pathname, handle, response, request) ->
  console.log "About to route request: #{pathname}"
  if typeof handle[pathname] == "function"
    handle[pathname](response, request)
  else
    console.log "--- not found : #{pathname}"
    response.writeHead 404, {"Content-Type": "text/plain"} 
    response.write "404 Not found"
    response.end()
  
exports.route = route