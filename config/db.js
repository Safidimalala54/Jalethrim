const { Pool } = require('pg');

const pool = new Pool({
  user: 'gondor_chic',
  host: 'localhost',
  database: 'gondor_chic',
  password: '0000',
  port: 5432,
});

module.exports = pool;
