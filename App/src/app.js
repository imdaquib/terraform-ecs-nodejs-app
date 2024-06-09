const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => res.send( "<h1>Hello World</h1> <h2>Congratulation! You have made it</h2>"))

app.listen(port, () => console.log(`App is running on port ${port}`));