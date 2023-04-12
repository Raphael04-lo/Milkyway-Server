import express from 'express';
import morgan from 'morgan';
// import helmet from 'helmet';
import dotenv from 'dotenv';
import path from 'path';
import cors from 'cors';
// import contentSecurityPolicy from 'helmet-csp';
import routes from './routes/milkyway.js';
import { errorHandler, notFoundHandler } from './middleware/errorHandler.js';

dotenv.config();

const dirname = path.resolve();

const app = express();

app.use(morgan('dev'));
// app.use(helmet());
app.use(cors());

// app.use(
//   contentSecurityPolicy({
//     useDefaults: true,
//     directives: {
//       defaultSrc: ["'self'", 'default.example'],
//       scriptSrc: ["'self'", 'js.example.com'],
//       objectSrc: ["'none'"],
//       upgradeInsecureRequests: [],
//     },
//     reportOnly: false,
//   }),
// );

app.use(express.static(path.join(dirname, '/public')));

app.use(express.json());

app.use('/milkyway', routes);

app.use(errorHandler);
app.use(notFoundHandler);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log('Server running'));
