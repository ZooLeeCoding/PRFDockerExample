const express = require('express')  
const app = express()  
const port = 3000

app.get('/', (request, response) => {  
  response.send('Hello from Express!');
  console.log('I said HEY! WHATS GOING ON?');
})

app.listen(port, (err) => {  
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log(`server is listening on ${port}`)
})