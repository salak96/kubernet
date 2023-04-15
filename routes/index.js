const { findAllusers,getUsersById } = require('../controller/users_controller')
const router = require('express').Router()


router.get('/', (req, res) => {
    res.send('Hello World!')
});
router.get('/users', findAllusers)
router.get('/users/:id', getUsersById)

module.exports = router