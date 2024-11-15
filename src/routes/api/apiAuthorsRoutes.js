const { getAuthors, createAuthor } = require('../../controllers/authorsController');
const { verifyNewAuthor } = require('../../utils/middlewares');

const router = require('express').Router();


router.get('/', getAuthors);
router.post('/', verifyNewAuthor, createAuthor);


module.exports = router;