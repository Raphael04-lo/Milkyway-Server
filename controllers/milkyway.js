import { dbGetPlanets, dbGetPlanet, dbGetArticles, dbGetMerch } from '../models/milkyway.js';

const getPlanets = async (req, res) => res.status(200).json(await dbGetPlanets());
const getPlanet = async (req, res) => {
  const id = req.params.id;
  return res.status(200).json(await dbGetPlanet(id));
};
const getArticles = async (req, res) => res.status(200).json(await dbGetArticles());
const getMerch = async (req, res) => res.status(200).json(await dbGetMerch());

export { getPlanets, getPlanet, getArticles, getMerch };
