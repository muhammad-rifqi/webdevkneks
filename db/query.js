const mysql = require('mysql2');
const md5 = require('md5');

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "kneks"
});

// password: "S#g=qGHo7i<t5",


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

const hotissue = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  hot_issues', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const hotissuecategory = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  hot_categories', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const hotissuesubcategory = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  hot_subcategories', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const institutions = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  institutions', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const sosmed = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  social_medias', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const scopes = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  scopes', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const maps = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  map', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const contacts = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  contacts', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const banners = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  banners', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const agendas = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  agendas', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const files = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  reports', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const files_category = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  report_categories', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const pdes = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  syariah', function (err, result) {
            if (err) throw err;
                const array = [];
                result?.forEach((listdata)=>{
                        const ddd = {
                            "id" : listdata?.id,
                            "name" : listdata?.name,
                            "link" : listdata?.link,
                            "menu_id" : listdata?.menu_id,
                            "submenu_id" : listdata?.submenu_id,
                            "order" : listdata?.order,
                        }
                        array.push(ddd)
                })

            res.status(200).json(array);
        });
    });
}

const pdes_menu = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  syariah_menu', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const pdes_submenu = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  syariah_submenu', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const pdes_overview = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  syariah_overview', function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}


const posts = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query("SELECT * FROM news ORDER BY id ASC", function (err, result) {
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

module.exports = {
    do_login,
    do_logout,
    api_login,
    categories,
    posts,
    news_categories,
    users,
    abouts,
    structure,
    hotissue,
    hotissuecategory,
    hotissuesubcategory,
    institutions,
    sosmed,
    scopes,
    maps,
    contacts,
    banners,
    agendas,
    files,
    files_category,
    pdes,
    pdes_menu,
    pdes_submenu,
    pdes_overview,
}
