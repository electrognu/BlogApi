const router = require('express').Router();

router.use('/posts', require('./api/apiPostsRoutes'));
router.use('/authors', require('./api/apiAuthorsRoutes'));


module.exports = router;