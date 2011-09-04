exec = require("child_process").exec

start = (response) ->
  console.log "Request /start called"
  exec "ls -lah", (error, stdout, stderr) ->
    response.writeHead 200, {"Content-Type": "text/plain"}
    response.write stdout
    response.end()

upload = (response) ->
  console.log "Request /upload called"
  response.writeHead 200, {"Content-Type": "text/plain"} 
  response.write "I AM UPLOAD HELLO"
  response.end()
  
exports.start = start
exports.upload = upload