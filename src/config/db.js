const mysql = require('mysql2');

const pool = mysql.createPool({
    host: '127.0.0.1',
    user: 'admin',
    password: 'admin123',
    port: 3306,
    database: 'BlogApp_DB'
})

module.exports = pool.promise();

