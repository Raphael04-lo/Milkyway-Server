import express from 'express';
import asyncHandler from 'express-async-handler';
import { getPlanets, getPlanet, getArticles, getMerch } from '../controllers/milkyway.js';

const router = express.Router();

router.get('/planets', asyncHandler(getPlanets));
router.get('/planets/:id', asyncHandler(getPlanet));
router.get('/articles', asyncHandler(getArticles));
router.get('/merch', asyncHandler(getMerch));

export default router;
