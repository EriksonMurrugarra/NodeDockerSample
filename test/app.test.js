const request = require('supertest')
const app = require('../app')

describe('app', () => {
    it('testing app', (done) => {
        request(app)
            .get('/')
            .expect(200, done)
    })
})