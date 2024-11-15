// The API response is a JSON :-)

const { selectAll, selectPostsByAuthor, selectPosts, insertPost, selectPostByPostId } = require("../models/postsModel");

/// GET - Retrieve all the posts, with Author data.
/// GET /api/posts/
const getPosts = async (req, res, next) => {
    try {
        let { page, limit } = req.query;
        if (page == undefined & limit == undefined) {
            const [result] = await selectAll();
            res.json(result);
        } else {
            let pageNum = page ?? '1';
            let limitPosts = limit ?? '10';
            pageNum = parseInt(pageNum);
            limitPosts = parseInt(limitPosts);
            if (isNaN(pageNum) || isNaN(limitPosts)) {
                return res.json({ message: 'Page & limit must be numbers, no strage things :-P' });
            }
            const [result] = await selectPosts(pageNum, limitPosts);
            res.json(result);
        }
    } catch (error) {
        next(error);
    }
}

/// GET - Retrieve all the posts BY an Author,  with Author data.
/// GET /api/posts/AUTHOR
const getPostsByAuthor = async (req, res, next) => {
    try {
        const auth = req.params.author;
        const [result] = await selectPostsByAuthor(auth);
        console.log(result);
        res.json(result);
    } catch (error) {
        next(error);
    }
}




const createPost = async (req, res, next) => {
    try {
        // Primero validacion de datos correctos ... como "MiddleWare?"
        const [result] = await insertPost(req.body);
        const [result2] = await selectPostByPostId(result.insertId);
        res.json(result2);
    } catch (error) {
        next(error);
    }

}



module.exports = {
    getPosts, createPost, getPostsByAuthor
}