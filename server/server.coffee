_       = require 'underscore'
express = require('express')

app = express()
app.configure ->
  app.use express.static 'public'

images = [
    id: 1
    title: 'This is a ship-shipping ship, shipping shipping ships',
    src: '/images/ship.png'
    user:
      username: 'Juhis'
  ,
    id: 2
    title: 'Cant afford pizza?',
    src: '/images/pizza.jpg'
    user:
      username: 'Jallu'
  ,
    id: 3
    title: 'Great success!',
    src: '/images/success.jpg'
    user:
      username: 'Hanna'
]

app.get '/api/images/:id', (req, res) ->
  res.send _.findWhere(images, id: parseInt req.params.id) or 404

app.get '/api/images', (req, res) ->
  res.send images

app.get '*', (req, res) ->
  res.sendfile 'public/index.html'

app.listen 9001
