server = require "./server"
router = require "./router"
reqHandlers = require "./requestHandlers"

handle = {}
handle["/"] = reqHandlers.start
handle["/start"] = reqHandlers.start
handle["/upload"] = reqHandlers.upload

server.start router.route, handle