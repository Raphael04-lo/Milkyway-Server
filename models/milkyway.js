import { query, pool } from '../db/index.js';

const dbGetPlanets = async () => {
  const { rows } = await query(`SELECT * FROM planet`);
  return rows;
};

const dbGetPlanet = async (id) => {
  const { rows } = await query(`SELECT * FROM planet WHERE p_id =$1`, [id]);
  return rows[0];
};

const dbGetArticles = async () => {
  const { rows } = await query('SELECT * from article');
  return rows;
};

const dbGetMerch = async () => {
  const { rows } = await query(`
  SELECT i2.im_id, m.name, m.description, i2.color, i2.img
  FROM merchendise m
         JOIN imgmerch i on m.m_id = i.m_id
         JOIN images i2 on i.im_id = i2.im_id
  ORDER BY m.name;
`);
  return rows;
};

export { dbGetPlanets, dbGetPlanet, dbGetArticles, dbGetMerch };
