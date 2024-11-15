// aquí van las Queries

const pool = require("../config/db")

// select* from posts
function selectAll() {
    return pool.query(`
        SELECT 
    posts.id AS post_id,
    posts.title AS post_title,
    posts.description AS post_description,
    posts.creation_date AS post_creation_date,
    posts.categorie AS post_category,
    authors.id AS author_id,
    authors.name AS author_name,
    authors.email AS author_email,
    authors.image AS author_image
FROM 
    BlogApp_DB.posts
JOIN 
    BlogApp_DB.authors 
ON 
    posts.author_id = authors.id
ORDER BY
    posts.id DESC;
        `);

}

// select posts PAGE and LIMIT 
function selectPosts(page, limit) {

    return pool.query(`
        SELECT 
    posts.id AS post_id,
    posts.title AS post_title,
    posts.description AS post_description,
    posts.creation_date AS post_creation_date,
    posts.categorie AS post_category,
    authors.id AS author_id,
    authors.name AS author_name,
    authors.email AS author_email,
    authors.image AS author_image
FROM 
    BlogApp_DB.posts
JOIN 
    BlogApp_DB.authors 
ON 
    posts.author_id = authors.id
ORDER BY
    posts.id DESC
LIMIT ? OFFSET ?;
        `, [limit, (page - 1) * limit]);

}


// selec all the posts of an author
function selectPostsByAuthor(author_id) {
    return pool.query(
        `SELECT 
        posts.id AS post_id,
        posts.title,
        posts.description,
        posts.creation_date,
        posts.categorie,
        authors.id AS author_id,
        authors.name AS author_name,
        authors.email AS author_email,
        authors.image AS author_image
    FROM 
        BlogApp_DB.posts
    INNER JOIN 
        BlogApp_DB.authors
    ON 
        posts.author_id = authors.id
    WHERE 
        authors.name = ?;`, [author_id]
    )
}


function insertPost({ title, description, creation_date, categorie, author_id }) {

    return pool.query(`
        INSERT INTO posts (title, description, creation_date, categorie, author_id) values (?,?,?,?,?)`, [title, description, creation_date, categorie, author_id]
    )
}

// Select Post By ID of the post
function selectPostByPostId(post_id) {
    return pool.query(
        `SELECT 
        posts.id,
        posts.title,
        posts.description,
        posts.creation_date,
        posts.categorie,
        posts.author_id 
    FROM 
        BlogApp_DB.posts
    WHERE 
        posts.id = ?;`, [post_id]
    )
}

module.exports = {
    selectAll, selectPosts, selectPostsByAuthor, insertPost, selectPostByPostId
}