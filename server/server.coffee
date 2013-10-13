express = require('express')

app = express()
app.configure ->
  app.use express.static 'public'

app.get '/api/images', (req, res) ->
  res.send [
      title: 'This is a ship-shipping ship, shipping shipping ships',
      src: '/images/ship.png'
      user:
        username: 'Juhis'
    ,
      title: 'Cant afford pizza?',
      src: '/images/pizza.jpg'
      user:
        username: 'Jallu'
    ,
      title: 'Great success!',
      src: '/images/success.jpg'
      user:
        username: 'Hanna'
  ]
app.get '*', (req, res) ->
  res.sendfile 'public/index.html'

app.listen 9001
