const { getAuthors, createAuthor } = require('../../controllers/authorsController');
const { verifyNewAuthor, verifyNonDuplicatedEmail } = require('../../utils/middlewares');

const router = require('express').Router();

router.get('/', getAuthors);
router.post('/', verifyNewAuthor, verifyNonDuplicatedEmail, createAuthor);


module.exports = router;