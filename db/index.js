import pg from 'pg';

// const pool = new pg.Pool();

// const query = (text, params) => pool.query(text, params);

// export { query, pool };

const client = new pg.Client({
  user: 'admin',
  password: 'IVBvaCzsx8O4ZA1qmzlFS5lYDoljYCeh',
  database: 'milkyway_i3k7',
  port: 5432,
  host: 'dpg-cgqikau4dad5es12ji50-a.frankfurt-postgres.render.com',
  ssl: true,
});

export { client };
