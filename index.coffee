H = require "hyperweb"
H.blastOff()

get "lhello"

post '/scores', (data) ->
  H.data.get "scores"
  .then (scores) ->
    unless scores.length
      scores = []

    scores.push data

    H.data.set "scores", scores

get '/scores', ->
  H.data("scores")
