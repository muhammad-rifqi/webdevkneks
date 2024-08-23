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
            result?.forEach((listdata) => {
                const ddd = {
                    "id": listdata?.id,
                    "name": listdata?.name,
                    "link": listdata?.link,
                    "menu_id": listdata?.menu_id,
                    "submenu_id": listdata?.submenu_id,
                    "order": listdata?.order,
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

const userroles = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM  roles', function (err, result) {
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
                            "news_datetime": item?.news_datetime,
                            "category_id": item?.category_id,
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


const inserthotissue = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const hot_issue_datetime = date + ' ' + time;
    const issue_datetime = req.body.issue_datetime.replace("T", " ");
    con.connect(function (err) {
        if (err) throw err;
        const fileupload = "/uploads/hot_issue/" + req.file.originalname;
        con.query("insert into hot_issues(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,hot_issue_datetime,created_at,updated_at,deleted_at,hot_subcategory_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id], function (err, result) {
                if (err) throw err;
                res.redirect('/hi');
            });
    });
}


const inserthotissubcategory = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const hot_issue_datetime = date + ' ' + time;

    con.connect(function (error) {
        if (error) throw error;
        con.query("insert into hot_subcategories(title,title_en,created_at,updated_at,hot_category_id) values(?,?,?,?,?)",
            [req.body.title, req.body.title_en, hot_issue_datetime, hot_issue_datetime, req.body.hot_category_id], function (err, result) {
                if (err) throw err;
                res.redirect('/hisc');
            });
    });
}

const insertnews = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const news_datetime = req.body.news_datetime.replace("T", " ");
    con.connect(function (err) {
        if (err) throw err;
        const fileupload = "/uploads/news/" + req.file.originalname;
        con.query("insert into news(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,news_datetime,created_at,updated_at,deleted_at,category_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, news_datetime, timeupdate, timeupdate, null, req.body.category_id], function (err, result) {
                if (err) throw err;
                res.redirect('/n');
            });
    });
}


const insertnewscategory = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const cat_datetime = date + ' ' + time;

    con.connect(function (error) {
        if (error) throw error;
        con.query("insert into news_categories(title,title_en,created_at,updated_at) values(?,?,?,?)",
            [req.body.title, req.body.title_en, cat_datetime, cat_datetime], function (err, result) {
                if (err) throw err;
                res.redirect('/nc');
            });
    });
}

const insertphoto = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const photos_datetime = req.body.photo_datetime.replace("T", " ");
    con.connect(function (err) {
        if (err) throw err;
        const photoupload = "/uploads/photo/" + req.file.originalname;
        con.query("insert into news_photos(title,title_en,content,content_en,photo,news_datetime,created_at,updated_at,deleted_at) values(?,?,?,?,?,?,?,?,?)",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, photoupload, photos_datetime, time_datetime, time_datetime, null], function (err, result) {
                if (err) throw err;
                res.redirect('/ph');
            });
    });

}

const insertvideo = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const videos_datetime = req.body.video_datetime.replace("T", " ");
    con.connect(function (err) {
        if (err) throw err;
        con.query("insert into news_videos(title,title_en,content,content_en,video,duration,news_datetime,created_at,updated_at,deleted_at) values(?,?,?,?,?,?,?,?,?,?)",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.video, req.body.duration, videos_datetime, time_datetime, time_datetime, null], function (err, result) {
                if (err) throw err;
                res.redirect('/v');
            });
    });

}


const insertusers = (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const pw = md5(req.body.password);
    con.connect(function (err) {
        if (err) throw err;
        con.query("insert into users(name,email,password,role_id,created_at,updated_at) values(?,?,?,?,?,?)",
            [req.body.name, req.body.email, pw, req.body.role_id, time_datetime, time_datetime], function (err, result) {
                if (err) throw err;
                res.redirect('/u');
            });
    });

}

const updatepassword = (req, res) => {
    const id_users = req.cookies.id;
    con.connect(function (err) {
        if (err) throw err;
        con.query('SELECT * FROM users where id = ? ', [id_users], function (err, result) {
            if (err) throw err;
            res.status(200).json(result)
        });
    });
}

const changespassword = (req, res) => {
    con.connect(function (error) {
        if (error) throw error;
        con.query('SELECT * FROM users where id = ? ', [req.body.id_user], function (err, result) {
            if (err) throw err;
            if (md5(req.body.old_password) == result[0]?.password) {
                if (req.body.new_password == req.body.verify_password) {
                    con.query("UPDATE users SET name=? , password=? WHERE id=? ", [req.body.names , md5(req.body.new_password), req.body.id_user], function (e, r) {
                        if (e) throw e
                        console.log('success');
                        res.redirect('/logout');
                    })
                } else {
                    console.log('new password and password confirm not match !'); 
                }
            } else {
                console.log('password not match in database!'); 
            }
        });
    });
}

const deleteuser = (req, res) => {
    const id_users = req.params.id;
    con.connect(function (err) {
        if (err) throw err;
        con.query('DELETE FROM users where id = ? ', [id_users], function (err, result) {
            if (err) throw err;
            res.redirect('/u');
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
    inserthotissue,
    inserthotissubcategory,
    insertnews,
    insertnewscategory,
    insertphoto,
    insertvideo,
    userroles,
    insertusers,
    updatepassword,
    changespassword,
    deleteuser
}
