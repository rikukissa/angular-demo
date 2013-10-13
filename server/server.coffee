express = require('express')

app = express()
app.configure ->
  app.use express.static 'public'



app.get '*', (req, res) ->
  res.sendfile 'public/index.html'

app.listen 9001
