const { Pool } = require('pg');
require('env2')('./config.env');
if (!process.env.DATABASE_URL) {
  trow new Error ('DB url not found ');
}
module.exports= new Pool ({connectionString:process.env.DATABASE_URL});
