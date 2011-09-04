querystring = require "querystring"

start = (response, postData) ->

  body = '<html>'+
  '<head>'+
  '<meta http-equiv="Content-Type" content="text/html; '+
  'charset=UTF-8" />'+
  '</head>'+
  '<body>'+
  '<form action="/upload" method="post">'+
  '<textarea name="text" rows="20" cols="60"></textarea>'+
  '<input type="submit" value="Submit text" />'+
  '</form>'+
  '</body>'+
  '</html>'
    
  response.writeHead 200, {"Content-Type": "text/html"}
  response.write body
  response.end()

upload = (response, postData) ->
  console.log "Request /upload called"
  response.writeHead 200, {"Content-Type": "text/plain"} 
  response.write "I AM UPLOAD. Here is the text #{querystring.parse(postData).text}"
  response.end()
  
exports.start = start
exports.upload = upload