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
    comments: [
        user: 'Hannu',
        body: 'haha'
    ]
  ,
    id: 2
    title: 'Cant afford pizza?',
    src: '/images/pizza.jpg'
    user:
      username: 'Jallu'
    comments: [
        user: 'Hannu',
        body: 'tosi hassu kuva'
    ]
  ,
    id: 3
    title: 'Great success!',
    src: '/images/success.jpg'
    user:
      username: 'Hanna'
    comments: [
        user: 'Hannu',
        body: ':D'
    ]
]

app.get '/api/images/:id', (req, res) ->
  res.send _.findWhere(images, id: parseInt req.params.id) or 404

app.get '/api/images', (req, res) ->
  res.send images

app.get '*', (req, res) ->
  res.sendfile 'public/index.html'

app.listen 9001
