H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "Hello World Again"

post '/:name', (name, data) ->
  H.data name, data
  .then ->
    "you set the value #{JSON.stringify data, null, 2}"
  
get '/:name', (name) ->
  H.data(name)
