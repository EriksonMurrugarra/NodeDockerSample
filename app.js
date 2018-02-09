const express = require('express')
const app = express()

app.use('/', (req, res) => {
    return res.send('hello')
})

module.exports = app