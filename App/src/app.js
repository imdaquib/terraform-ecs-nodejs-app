const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => res.send( "<h1> Welcome to Hello World</h1>"))

app.listen(port, () => console.log(`App is running on port ${port}`));