const { getPosts, createPost, getPostsByAuthor } = require('../../controllers/postsController');
const { checkAuthorId } = require('../../utils/middlewares');

const router = require('express').Router();

router.get('/', getPosts);
router.get('/:author', getPostsByAuthor);
router.get('/',);

router.post('/', checkAuthorId, createPost);
// router.put('/:postId', updatePost);
// router.delete('/:postId', deletePost)

module.exports = router;