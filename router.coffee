route = (pathname, handle, response, postData) ->
  console.log "About to route request: #{pathname}"
  if typeof handle[pathname] == "function"
    handle[pathname](response, postData)
  else
    console.log "--- not found : #{pathname}"
    response.writeHead 404, {"Content-Type": "text/plain"} 
    response.write "404 Not found"
    response.end()
  
exports.route = route