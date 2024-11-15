const pool = require("../config/db");


const checkAuthorId = async (req, res, next) => {
    const [auth] = await authorExistById(req.body.author_id);
    if (auth.length === 0) {
        res.status(400).json({ message: "Error, the author don't exists.  " })
    } else {
        next();
    }
}

const verifyNewAuthor = async (req, res, next) => {
    const [auth] = await authorExistByName(req.body.name);
    if (auth.length === 0) {
        res.status(400).json({})
    }
    res.json(auth);
}


// USED BY MIDDLEWARE : 
// if it finds author_id returns array with object id, if not returns empty array.
function authorExistById(author_id) {
    return pool.query(
        `SELECT id
        FROM authors
        WHERE id = ?`, [author_id]
    );
}

// if it finds auth_name returns array with object name, if not returns empty array.
function authorExistByName(auth_name) {
    return pool.query(
        `SELECT name
        FROM authors
        WHERE name = ?
        LIMIT 1;`, [auth_name]
    );

}

module.exports = {
    checkAuthorId, verifyNewAuthor
}