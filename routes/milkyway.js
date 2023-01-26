import express from 'express';
import asyncHandler from 'express-async-handler';
import { getPlanets, getPlanet } from '../controllers/milkyway.js';

const router = express.Router();

router.get('/planets', asyncHandler(getPlanets));
router.get('/planets/:id', asyncHandler(getPlanet));

export default router;
