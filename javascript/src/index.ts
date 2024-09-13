import express, { Express } from 'express';
import cors from 'cors';
// Allow async handlers to cleanly throw errors to the global error handler.
import 'express-async-errors';
import Routes from './routes';
import { Env } from './env';

// Spin up an express server instance and enable all CORS Requests.
// For more informaton on the CORS package, see here: https://expressjs.com/en/resources/middleware/cors.html
const app: Express = express();
app.use(express.json());
app.use(cors());

app.use('/', Routes);

// Serve exercise instructions via /instructions endpoint.
app.use('/instructions', express.static('./src/instructions'));






const server = app.listen(Env.PORT, () => {
    console.log(
        `[server]: SQL Exercise controller is running at http://localhost:${Env.PORT}.\r\n`+
        `Please visit http://localhost:${Env.PORT}/instuctions to get started!`
    );
});


// Help ensure that the project releases the served port on close.
process.on('SIGINT', () => {
    console.log(' - Exit command received. Closing server...');
    server.close();
});

// If the configured port is occupied, let the user know.
process.on('uncaughtException', (error) => {
    if (error.message.includes('EADDRINUSE')) {
        console.error(
            `Port ${Env.PORT} is already in use. \r\n` +
                `Either alter the port in the .env or follow instructions in README to terminate the process using port ${Env.PORT}.`
        );
    }
});