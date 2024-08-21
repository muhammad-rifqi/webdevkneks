const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "kneks"
});


const replaceIdName = (id) => {
    return new Promise((resolve, reject) => {
        connection.connect(function (err) {
            if (err) return reject(err);
            connection.query('SELECT * FROM syariah_menu WHERE id = ?', [id], (err, result) => {
                if (err) return reject(err);
                const bbb = result.find(res => res.id === id);
                resolve(bbb);
            });
        });
    });
}

const replaceSubIdName = (idt) => {
    connection.connect(function (err) {
        if (err) throw err;
        connection.query('SELECT * FROM syariah_submenu where id= ? ', [idt], (err, result) => {
            if (err) throw err;
            const aaa =  result.find(res => res.id === idt);
            return aaa;
        });
    });
}

const convertIdWithName = async (id) => {
    try {
        const ddd = await replaceIdName(id);
        return ddd;
    } catch (error) {
        console.error("Error:", error);
    }
  }

const convertIdWithSubName = async (id) => {
    const rrr = await replaceSubIdName(id);
    return rrr;
  }
 

console.log(convertIdWithSubName(1).then(data => console.log(data)));

module.exports = {
    convertIdWithName,
    convertIdWithSubName,
}