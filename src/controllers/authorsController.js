const { selectAllAuthors, insertAuthor } = require("../models/authorsModel");


const getAuthors = async (req, res, next) => {
    try {
        // const auth = req.params.author;
        const [result] = await selectAllAuthors();
        res.json(result);
    } catch (error) {
        next(error);
    }
}

const createAuthor = async (req, res, next) => {
    try {
        const [result] = await insertAuthor(req.body);
        res.json(result);
    } catch (error) {
        next(error);
    }
}

module.exports = {
    getAuthors, createAuthor
}