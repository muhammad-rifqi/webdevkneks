const md5 = require('md5');
const { executeQuery } = require('./config');

const mysql = require('mysql2');
const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "S#g=qGHo7i<t5",
    database: "kneks"
});


// password: "S#g=qGHo7i<t5",

const do_login = async (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);
    const sql = await executeQuery('SELECT * FROM users where email = ? AND password = ? ', [email, password])
    if (sql?.length > 0) {
        const isLogin = true;
        res.cookie("islogin", isLogin);
        res.cookie("id", sql[0]?.id);
        res.cookie("name", sql[0]?.name);
        res.redirect("/dashboard");
    } else {
        res.redirect("/");
    }

}

const do_logout = (req, res) => {
    res.clearCookie("islogin");
    res.clearCookie("name");
    res.clearCookie("id");
    res.redirect("/");
}

const api_login = async (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);
    const sql = await executeQuery('SELECT * FROM users where email = ? AND password = ? ', [email, password])
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const categories = async (req, res) => {
    const names = req.params.name;
    const sql = await executeQuery('SELECT * FROM news_' + names + '')
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const users = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const news_categories = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM news_categories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const abouts = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM abouts');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}


const structure = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  structure_assets');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const hotissue = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  hot_issues');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const hotissuecategory = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  hot_categories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const hotissuesubcategory = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  hot_subcategories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const institutions = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  institutions');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const sosmed = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  social_medias');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const scopes = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  scopes');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const maps = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  map')
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const contacts = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  contacts');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const banners = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  banners');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const agendas = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  agendas');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const files = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  reports');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const files_category = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  report_categories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah')
    const array = [];
    sql?.forEach((listdata) => {
        const ddd = {
            "id": listdata?.id,
            "name": listdata?.name,
            "link": listdata?.link,
            "menu_id": listdata?.menu_id,
            "submenu_id": listdata?.submenu_id,
            "order": listdata?.order,
        }
        array.push(ddd)
    });
    if (array?.length > 0) {
        res.status(200).json(array)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes_menu = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah_menu');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes_submenu = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah_submenu');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes_overview = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah_overview');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const userroles = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  roles');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const posts = (req, res) => {
    con.connect(function (err) {
        if (err) throw err;
        con.query("SELECT * FROM news ORDER BY id DESC limit 50", function (err, result) {
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
                            "content" : item?.content,
                            "content_en" : item?.content_en,
                            "excerpt" : item?.excerpt,
                            "excerpt_en" :item?.excerpt_en,
                            "is_publish" :item?.is_publish,
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


const inserthotissue = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const hot_issue_datetime = date + ' ' + time;
    const issue_datetime = req.body.issue_datetime.replace("T", " ");
    const fileupload = "/uploads/hot_issue/" + req.file.originalname;
    const sql = await executeQuery("insert into hot_issues(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,hot_issue_datetime,created_at,updated_at,deleted_at,hot_subcategory_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id]);
    if(sql){
        res.redirect('/hi');
    }else{
        console.log(sql);
    }
        
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
                    con.query("UPDATE users SET name=? , password=? WHERE id=? ", [req.body.names, md5(req.body.new_password), req.body.id_user], function (e, r) {
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
