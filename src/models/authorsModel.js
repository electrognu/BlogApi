const pool = require("../config/db")


function selectAllAuthors() {
    return pool.query(
        `SELECT 
    authors.id AS id,
    authors.name AS name,
    authors.email AS email,
    authors.image AS image
FROM 
    BlogApp_DB.authors
ORDER BY 
    authors.id;
` )
}


function insertAuthor({ id, name, email, image }) {
    return pool.query(`
        INSERT INTO authors (id, name, email, image) values (?,?,?,?)`, [id, name, email, image]
    )
}

module.exports = {
    selectAllAuthors, insertAuthor
}


