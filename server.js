/**
 * Author: James Van Leuven <james@bookt.in>
 * Initial Build: 2018-03-04 17:28:00
 * ARCHITECTURE:
 *      yarn ^1.5.1
 *      webpack ^4.0.1
 *      typescript ^2.7
 *      tsc ^2.8.0-dev.20180302
 */
const dotenv = require('dotenv'),
    env = dotenv.config({ path: './.env' }),
    express = require('express'),
    session = require('express-session'),
    validator = require('express-validator'),
    path = require('path'),
    logger = require('morgan'),
    cookieParser = require('cookie-parser'),
    bodyParser = require('body-parser'),
    debug = require('debug')('server:server'),
    http = require('http');

// CREATE EXPRESS SERVER
const app = express();
const server = http.createServer(app);
const port = normalizePort(process.env.PORT || '5001');
app.set('port', port);

// LISTEN ON NETWORK INTERFACE
server.listen(port);
server.on('error', onError);
server.on('listening', onListening);

// SOCKET REQUESTS
const io = require('socket.io').listen(server);
io.on( 'connection', require('./sockets') );

// NORMALIZE PORT
function normalizePort(val){ 
    const port = parseInt(val, 10, 0);
    if (isNaN(port)) {return val; }
    if (port >= 0) { return port; }
    return false;
}

// HTTP ERROR LISTENER
function onError(error){ 
    if (error.syscall !== 'listen') { throw error; }
    const bind = typeof port === 'string' ? 'Pipe ' + port : 'Port ' + port;
    // handle specific listen errors with friendly messages
    switch (error.code) {
        case 'EACCES': console.error(bind + ' requires elevated privileges'); process.exit(1); break;
        case 'EADDRINUSE': console.error(bind + ' is already in use'); process.exit(1); break;
        default: throw error;
    }
}
// HTTP SERVER LISTENER
function onListening() {
    const addr = server.address();
    const bind = typeof addr === 'string' ? 'pipe ' + addr : 'port ' + addr.port;
    console.log('listening on: ', bind);
    debug('Listening on ' + bind);
}

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());

// API REQUESTS
const router = require('./router')(app);

module.export = app;