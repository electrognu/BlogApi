# Express application for API Blogger, reduced version.

# API query list 
Tasks to acomplish:
    - DB creation with tables and all the fields.
    - Creation of the Express project.
    - Creation of the necessary routes to establish the API base.
    - Creation of the URLs for the recovery and creation of new posts within the database.
    - Creation of the necessary URLs for the recovery and creation of new authors within the database.
    - Creation of the route that allows us to recover all the posts of a specific author from the recovery of said author from the URL.


## GET - Retrieve all or a page of posts, with Author data.
GET /api/posts/
Body : X
Headers : X
Response :
- Array with all posts objects in descendent order by post.id, with Author data included in each one.
- If no query, all posts are retuned
- If Query: "page" and "limit". Limit sets the number of returned posts. And page is where the sqlquery starts. By default page=1 and limit=10 if one of both is ommited. Both ommited return all posts.
- In case page or limit is not a number an error object is retuned.
- In case empty array is returned the page selected is out of range. 

## GET - Retrieve all the posts BY an Author in URL,  with Author data.
GET /api/posts/AUTHOR
Body : X
Headers : X
Response :
- Array with all posts objects, with Author data included in each one.
- If no post has been found, response is an empty object (the Author has no entries already or the Author not exist!!)
-

## POST - New post creation.
POST /api/posts
Body: title, description, creation_date, categorie, author_id
Headers: X
Response : 
- Object with the created post
- In case the "author_id" does not exist, error is thrown

## POST - Create new Author
POST /api/authors
Body: id, name, email, image
Headers: X
Response : 
- Object with the created Author when the Author is created.
- In case the the name of the author or the email is already in the DB throws an error.