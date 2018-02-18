const express = require('express')
const uuidv1 = require('uuid/v1')
const app = express()

const uuid = uuidv1()
const username = process.env.SECRET_USERNAME || 'computer'

app.use('/', (req, res) => {
    return res.send(`Hello, I am ${username}! and my instance: ${uuid}\n`)
})

module.exports = app