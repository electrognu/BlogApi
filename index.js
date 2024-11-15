// Server creation and configuration
const http = require('http');
const app = require('./src/app'); // importamos app express

// Config .env
require('dotenv').config();

// Server creation
const server = http.createServer(app); // le pasamos la aplicación de express ...

const PORT = process.env.PORT || 3000;
server.listen(PORT);

// Listeners
server.on('listening', () => {
    console.log(`Server listening on port ${PORT}`);
});

server.on('error', (error) => {
    console.log(error);
});