const express = require('express')
const uuidv1 = require('uuid/v1')
const app = express()

const uuid = uuidv1()

app.use('/', (req, res) => {
    return res.send(`Hello My Name Is: ${uuid}\n`)
})

module.exports = app