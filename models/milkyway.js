import { query, pool } from '../db/index.js';

const dbGetPlanets = async () => {
  const { rows } = await query(`SELECT * FROM planet`);
  return rows;
};

const dbGetPlanet = async (id) => {
  const { rows } = await query(`SELECT * FROM planet WHERE p_id =$1`, [id]);
  return rows[0];
};

export { dbGetPlanets, dbGetPlanet };
