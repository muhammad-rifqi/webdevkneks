const mysql = require('mysql2');
const md5 = require('md5');

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    // password: "S#g=qGHo7i<t5",
    password: "",
    database: "kneks"
});

const do_login = (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);
    console.log(email, password)
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM users where email = ? AND password = ? ', [email, password], (error, results) => {
            if (error) {
                throw error
            }
            if (results?.length > 0) {
                console.log(results)
                const isLogin = true;
                res.cookie("islogin", isLogin);
                res.cookie("id", results[0]?.id);
                res.cookie("name", results[0]?.name);
                res.redirect("/dashboard");
            } else {
                res.redirect("/");
            }
        });
    })
}

const do_logout = (req, res) => {
    res.clearCookie("islogin");
    res.clearCookie("name");
    res.clearCookie("id");
    res.redirect("/");
}

const api_login = (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);

    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM users where email = ? AND password = ? ', [email, password], (error, results) => {
            if (error) {
                throw error
            }
            if (results?.length > 0) {
                res.status(200).json(results)
            } else {
                res.status(200).json({ "success": false })
            }
        });
    })
}

const categories = (req, res) => {
    const names = req.params.name;
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM news_' + names + '', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const users = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM users', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const news_categories = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM news_categories', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const abouts = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM abouts', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const structure = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  structure_assets', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const posts = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query("SELECT * FROM news ORDER BY id ASC limit 5", function (err, result) {
            if (err) throw err;

            let promises = result.map((item) => {
                return new Promise((resolve, reject) => {
                    con.query("SELECT * FROM news_categories WHERE id = ?", [item.category_id], (e, r) => {
                        if (e) return reject(e);
                        let detail = r[0]; 
                        let row = {
                            "id": item?.id,
                            "title": item?.title,
                            "title_en": item?.title_en,
                            "news_datetime" : item?.news_datetime,
                            "category_id" : item?.category_id,
                            "detail": detail
                        };
                        resolve(row);
                    });
                });
            });
            Promise.all(promises)
                .then((rows) => {
                    res.status(200).json(rows);
                })
                .catch((error) => {
                    res.status(500).json({ error: error.message });
                });
        });
    });
}

const menus = (req, res) => {
    const sql = `
        SELECT menus.id as menu_id, menus.name as menu_name, submenus.id as submenu_id, submenus.name as submenu_name 
        FROM menus 
        LEFT JOIN submenus ON menus.id = submenus.menu_id
    `;
    db.query(sql, (err, results) => {
        if (err) throw err;
        const menus = results.reduce((acc, row) => {
            const { menu_id, menu_name, submenu_id, submenu_name } = row;
            const menu = acc.find(m => m.id === menu_id);
            if (menu) {
                menu.submenus.push({ id: submenu_id, name: submenu_name });
            } else {
                acc.push({
                    id: menu_id,
                    name: menu_name,
                    submenus: submenu_id ? [{ id: submenu_id, name: submenu_name }] : []
                });
            }
            return acc;
        }, []);
        res.send(menus);
    });
};


module.exports = {
    do_login,
    do_logout,
    api_login,
    categories,
    posts,
    menus,
    news_categories,
    users,
    abouts,
    structure
}