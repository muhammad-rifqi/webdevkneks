const util = require('util');
const pgsql = require('pg');
const pool = new pgsql.Pool({
    user: 'kneks',
    host: 'localhost',
    database: 'kneks',
    password: 'barlok15@',
    port: 5432,
})

// live : Barlok15@ localhost : 123
// prod : barlok15@
pool.query = util.promisify(pool.query);
const executeQuery = (query, arraParms) => {
    return new Promise((resolve, reject) => {
        try {
            pool.query(query, arraParms, (err, data) => {
                if (err) {
                    console.log("error in executing the query");
                    reject(err);
                }
                resolve(data?.rows);
            });
        } catch (err) {
            reject(err);
        }
    });
};
module.exports = { executeQuery };
